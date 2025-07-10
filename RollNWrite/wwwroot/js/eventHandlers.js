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
    event.preventDefault();

    if (currentToolIndex >= 0) {
        switch (gameData.toolbarButtons[currentToolIndex].type) {
            case 'line':
            case 'erase':
                handleCanvasPointerStartDraw(event, point);
                break;
            case 'circ':
                addNewCircleAndDraw(point);
                break;
            case 'rect':
                addNewRectangleAndDraw(point);
                break;
            case 'text':
                addNewTextAndDraw(point);
                break;
            case 'dyntext':
                handleCanvasPointerStartDynamicText(event, point);
                break;
        }
    } else {
        dragStart(point);

        redraw(redrawBG = false);
    }
}

function handleCanvasPointerStartDraw(event, point) {
    isDrawing = true;

    addNewLineAndDraw(point);
}

function handleCanvasPointerStartDynamicText(event, point) {
    const input = document.createElement('input');
    const fontSize = gameData.toolbarButtons[currentToolIndex].fontSize * canvasZoom;

    input.type = 'text';
    input.name = 'dynamic-text-input';
    input.style.position = 'absolute';
    input.style.left = (event.pageX - fontSize * 0.4) + 'px';
    input.style.top = (event.pageY - fontSize * 0.6) + 'px';
    input.style.width = '2em';
    input.style.fontSize = fontSize + 'px';
    input.style.color = gameData.toolbarButtons[currentToolIndex].fillColor;
    input.style.border = 'none';
    input.setAttribute(dataAttrPoint, JSON.stringify(point));
    input.setAttribute(dataAttrToolIndex, currentToolIndex);
    document.body.appendChild(input);

    input.addEventListener('blur', handleDynamicTextInputBlur, false);
    input.addEventListener('keydown', handleDynamicTextInputKeydown, false);

    input.focus();
}

function handleDynamicTextInputBlur(event) {
    if (!handlingButtonPress) {
        addNewDynamicTextAndDraw(JSON.parse(this.getAttribute(dataAttrPoint)), parseInt(this.getAttribute(dataAttrToolIndex)), this.value);
        this.remove()
    };
}

function handleDynamicTextInputKeydown(event) {
    switch (event.key) {
        case 'Enter':
            handlingButtonPress = true;
            event.preventDefault();
            addNewDynamicTextAndDraw(JSON.parse(this.getAttribute(dataAttrPoint)), parseInt(this.getAttribute(dataAttrToolIndex)), this.value);
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
    if (isDrawing && currentToolIndex >= 0) {
        event.preventDefault();
        addPointToLineAndDraw(point);
    } else if (dragObject) {
        event.preventDefault();
        dragMove(point);
    }
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
    if (currentToolIndex >= 0 || dragObject) {
        event.preventDefault();
        cancelCanvasOperations();
    }
}

function handleCanvasMouseOut(event) {
    // Without a handleCanvasMouseMove here, if the mouse moves quickly
    // outside the canvas, the line doesn't reach the edge of the canvas.
    handleCanvasMouseMove(event);

    if (isDrawing && currentToolIndex >= 0 || dragObject) {
        cancelCanvasOperations();
    }
}

function handleCanvasMouseWheel(event) {
    if (event.ctrlKey) {
        event.preventDefault();

        const newZoomIndex = canvasZoomIndex + (event.wheelDeltaY > 0 ? 1 : -1);

        if (newZoomIndex !== canvasZoomIndex && newZoomIndex >= 0 && newZoomIndex < canvasZoomLevels.length) {
            const realX = event.offsetX / canvasZoom,
                realY = event.offsetY / canvasZoom;

            canvasZoomIndex = newZoomIndex;
            canvasZoom = canvasZoomLevels[canvasZoomIndex];

            const scrollX = realX * canvasZoom - event.offsetX + canvasContainer.scrollLeft,
                scrollY = realY * canvasZoom - event.offsetY + canvasContainer.scrollTop;

            resizeCanvas(canvasBaseWidth, canvasBaseHeight);
            redraw();

            canvasContainer.scrollTo(scrollX, scrollY);
        }
    }
}

function handleConfigButtonClick(event) {
    resetToggleButtons(this);
    cancelCanvasOperations();
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

function handleDrawButtonClick(event) {
    if (this.classList.contains('lock')) {
        currentToolIndex = -1;
        currentToolLockOn = false;
        resetToggleButtons();
    } else if (this.classList.contains('active')) {
        currentToolLockOn = true;
        this.classList.add('lock');
    } else {
        currentToolIndex = parseInt(this.getAttribute(dataAttrToolIndex));
        currentToolLockOn = false;
        resetToggleButtons();
        this.classList.add('active');
    }
}

function handleRngButtonClick(event) {
    const btn = this;
    randomize(btn);
}

function resetToggleButtons() {
    toolbar.querySelectorAll('.drawButton').forEach(btn => {
        btn.classList.remove('lock');
        btn.classList.remove('active');
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
    cancelCanvasOperations();

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
    cancelCanvasOperations();

    undoDraw();
}

function handleRedoButtonClick(event) {
    cancelCanvasOperations();

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
        resetToolbarCustomButtons();
        undoButton.disabled = gameData.pathList.length === 0;
    }
    fileReader.readAsText(file);
}
