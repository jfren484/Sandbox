function handleWindowResize(event) {
    canvasContainer.style.width = window.innerWidth + 'px';
    canvasContainer.style.height = (window.innerHeight - toolbar.offsetHeight) + 'px';

    containerStyle = window.getComputedStyle(canvasContainer);

    canvasBaseWidth = window.innerWidth
        - parseFloat(containerStyle.getPropertyValue('padding-left'))
        - parseFloat(containerStyle.getPropertyValue('padding-right'));
    canvasBaseHeight = window.innerHeight
        - toolbar.offsetHeight
        - parseFloat(containerStyle.getPropertyValue('padding-top'))
        - parseFloat(containerStyle.getPropertyValue('padding-bottom'));

    resizeCanvas(canvasBaseWidth, canvasBaseHeight);

    redraw();
}

function handleCanvasMouseDown(event) {
    handleCanvasPointerStart(event, {
        x: event.offsetX / canvasZoom,
        y: event.offsetY / canvasZoom
    });
}

function handleCanvasTouchStart(event) {
    handleCanvasPointerStart(event, {
        x: (event.touches[0].clientX - canvas.offsetLeft) / canvasZoom,
        y: (event.touches[0].clientY - canvas.offsetTop) / canvasZoom
    });
}

function handleCanvasPointerStart(event, point) {
    if (currentToolIndex < 0) return;
    console.log(point);

    event.preventDefault();
    switch (gameData.toolbarButtons[currentToolIndex].type) {
        case 'line':
        case 'erase':
            handleCanvasPointerStartDraw(event, point);
            break;
        case 'text':
            handleCanvasPointerStartText(event, point);
            break;
        case 'dyntext':
            handleCanvasPointerStartDynamicText(event, point);
            break;
    }
}

function handleCanvasPointerStartDraw(event, point) {
    isDrawing = true;

    drawLineStart(point);
}

function handleCanvasPointerStartText(event, point) {
    drawText(point);
}

function handleCanvasPointerStartDynamicText(event, point) {
    const input = document.createElement('input');
    input.type = 'text';
    input.name = 'dynamic-text-input';
    input.style.position = 'absolute';
    input.style.left = (canvas.offsetLeft + point.x * canvasZoom - gameData.toolbarButtons[currentToolIndex].fontSize * canvasZoom * 0.9) + 'px';
    input.style.top = (canvas.offsetTop + point.y * canvasZoom - gameData.toolbarButtons[currentToolIndex].fontSize * canvasZoom * 0.7) + 'px';
    input.style.width = '2em';
    input.style.fontSize = gameData.toolbarButtons[currentToolIndex].fontSize * canvasZoom + 'px';
    input.style.color = gameData.toolbarButtons[currentToolIndex].fillColor;
    input.style.border = 'none';
    input.setAttribute(dataAttrPoint, JSON.stringify(point));
    document.body.appendChild(input);

    input.addEventListener('blur', handleDynamicTextInputBlur, false);
    input.addEventListener('keydown', handleDynamicTextInputKeydown, false);

    input.focus();
}

function handleDynamicTextInputBlur(event) {
    if (!handlingButtonPress) {
        drawDynamicText(JSON.parse(this.getAttribute(dataAttrPoint)), this.value);
        this.remove()
    };
}

function handleDynamicTextInputKeydown(event) {
    switch (event.key) {
        case 'Enter':
            handlingButtonPress = true;
            event.preventDefault();
            drawDynamicText(JSON.parse(this.getAttribute(dataAttrPoint)), this.value);
            this.remove();
            break;
        case 'Escape':
            handlingButtonPress = true;
            event.preventDefault();
            this.remove();
            break;
    }
    handlingButtonPress = false;
}

function handleCanvasMouseMove(event) {
    handleCanvasPointerMove(event, {
        x: event.offsetX / canvasZoom,
        y: event.offsetY / canvasZoom
    });
}

function handleCanvasTouchMove(event) {
    handleCanvasPointerMove(event, {
        x: (event.touches[0].clientX - canvas.offsetLeft) / canvasZoom,
        y: (event.touches[0].clientY - canvas.offsetTop) / canvasZoom
    });
}

function handleCanvasPointerMove(event, point) {
    if (!isDrawing || currentToolIndex < 0) return;

    event.preventDefault();
    drawLineContinue(point);
}

function handleCanvasMouseUp(event) {
    handleCanvasPointerEnd(event);
}

function handleCanvasTouchEnd(event) {
    handleCanvasPointerEnd(event);
}

function handleCanvasTouchCancel(event) {
    handleCanvasPointerEnd(event);
}

function handleCanvasPointerEnd(event) {
    if (currentToolIndex < 0) return;

    event.preventDefault();
    isDrawing = false;
}

function handleCanvasMouseOut(event) {
    // Without a handleCanvasMouseMove here, if the mouse moves quickly
    // outside the canvas, the line doesn't reach the edge of the canvas.
    handleCanvasMouseMove(event);

    isDrawing = false;
}

function handleCanvasMouseWheel(event) {
    if (event.wheelDeltaY > 0) {
        canvasZoom = Math.min(canvasZoomMax, canvasZoom + canvasZoomBy);
    } else {
        canvasZoom = Math.max(canvasZoomMin, canvasZoom - canvasZoomBy);
    }
    //event.ctrlKey

    resizeCanvas(canvasBaseWidth, canvasBaseHeight);
    redraw();
}

function handleConfigButtonClick(event) {
    resetToggleButtons(this);
    isDrawing = false;
    editingToolIndex = -1;
    currentToolIndex = -1;

    tempBGImageData = gameData.bgImageData;
    tempToolbarButtons = structuredClone(gameData.toolbarButtons);

    tempBGImage.src = tempBGImageData ? tempBGImageData : defTempBGImageSrc;
    resetDialogToolList();

    resetToolEdit();
    toggleDialogModalSections();
    modalDialog.classList.add('visible');
}

function handleToggleButtonClick(event) {
    document.getElementById(this.id + '_input').click();
}

function handleDrawInputChange(event) {
    const btn = document.getElementById(this.id.replace('_input', ''));

    if (this.checked) {
        btn.classList.add('active');
        resetToggleButtons(this);
        currentToolIndex = parseInt(this.getAttribute(dataAttrToolIndex));
    } else {
        btn.classList.remove('active');
        currentToolIndex = -1;
    }
}

function resetToggleButtons(input) {
    toolbar.querySelectorAll('input[type="checkbox"]').forEach(cb => {
        if (cb !== input) {
            cb.checked = false;
            cb.dispatchEvent(new Event('change'));
        }
    });
}

function handleSaveButtonClick(event) {
    const jsonData = JSON.stringify(gameData);
    const blob = new Blob([jsonData], { type: 'text/plain' });
    const url = URL.createObjectURL(blob);
    const a = document.createElement('a');
    a.href = url;
    a.download = 'savegame.sav';
    a.style.display = 'none';
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
    URL.revokeObjectURL(url);
}

function handleLoadButtonClick(event) {
    fileInput.name = 'savFileInput';
    fileInput.accept = '.sav';
    fileInput.click();
}

function handleImageButtonClick(event) {
    fileInput.name = 'bgImageInput';
    fileInput.accept = 'image/*';
    fileInput.click();
}

function handleUndoButtonClick(event) {
    undoDraw();
}

function handleRedoButtonClick(event) {
    redoDraw();
}

function handleFileInputChange(event) {
    if (event.target.files.length === 0) return;

    switch (event.target.name) {
        case 'bgImageInput':
            handleBackgroundImageFileInputChange(event.target.files[0]);
            break;
        case 'savFileInput':
            handleSaveFileInputChange(event.target.files[0]);
            break;
    }

    // Reset value so even will trigger again even when picking the same file.
    this.value = null;
}

function handleBackgroundImageFileInputChange(file) {
    const fileReader = new FileReader();
    fileReader.onload = function () {
        tempBGImageData = fileReader.result;
        tempBGImage.src = tempBGImageData;
    }
    fileReader.readAsDataURL(file);
}

function handleSaveFileInputChange(file) {
    const fileReader = new FileReader();
    fileReader.onload = function () {
        resetToDefaults();

        const txt = fileReader.result;
        const newGameData = JSON.parse(txt);
        if (newGameData.pathList === undefined) newGameData.pathList = [];
        newGameData.redoPathList = [];

        gameData = newGameData;
        loadBGImage();
        redraw();
        resetToggleButtons();
        undoButton.disabled = gameData.pathList.length === 0;
    }
    fileReader.readAsText(file);
}

function handleDialogCustomToolButtonClick(event) {
    const index = Array.from(dialogToolsList.children).indexOf(event.target);
    editingToolIndex = index;
    tempToolbarDefType = tempToolbarButtons[editingToolIndex].type;

    setupToolEdit(tempToolbarButtons[editingToolIndex]);
    toggleDialogModalSections();
}

function handleDialogCancelClick(event) {
    modalDialog.classList.remove('visible');
}

function handleDialogSaveClick(event) {
    modalDialog.classList.remove('visible');
    gameData.toolbarButtons = tempToolbarButtons;
    resetToolbarCustomButtons();

    gameData.bgImageData = tempBGImageData;
    loadBGImage();
}

function handleDialogToolTypeChange(event) {
    tempToolbarDefType = document.getElementById('dialogToolType').value;
    activateToolEditType(tempToolbarButtons[editingToolIndex]);
}

function handleDialogToolAddClick(event) {
    const index = dialogToolsList.children.length;
    editingToolIndex = index;
    tempToolbarDefType = '';

    setupToolEdit();
    toggleDialogModalSections();
}

function handleDialogToolCancelClick(event) {
    editingToolIndex = -1;
    resetToolEdit();
    toggleDialogModalSections();
}

function handleDialogToolSaveClick(event) {
    const toolDef = saveToolEdit();
    tempToolbarButtons[editingToolIndex] = toolDef;

    editingToolIndex = -1;
    resetToolEdit();
    resetDialogToolList();
    toggleDialogModalSections();
}

function handleDialogToolMoveUpClick(event) {
    const currItem = tempToolbarButtons[editingToolIndex];
    tempToolbarButtons.splice(editingToolIndex, 1);
    editingToolIndex--;
    tempToolbarButtons.splice(editingToolIndex, 0, currItem);
    resetDialogToolList();
    resetDialogToolMoveButtons();
}

function handleDialogToolMoveDownClick(event) {
    const currItem = tempToolbarButtons[editingToolIndex];
    tempToolbarButtons.splice(editingToolIndex, 1);
    editingToolIndex++;
    tempToolbarButtons.splice(editingToolIndex, 0, currItem);
    resetDialogToolList();
    resetDialogToolMoveButtons();
}

function handleDialogToolDeleteClick(event) {
    tempToolbarButtons.splice(editingToolIndex, 1);

    editingToolIndex = -1;
    resetToolEdit();
    resetDialogToolList();
    toggleDialogModalSections();
}
