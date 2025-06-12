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
    if (isConfiguring || !drawParams) return;

    isDrawing = true;

    drawLineStart({ x: event.offsetX / canvasZoom, y: event.offsetY / canvasZoom });
}

function handleCanvasMouseMove(event) {
    if (isConfiguring || !isDrawing || !drawParams) return;

    drawLineContinue({ x: event.offsetX / canvasZoom, y: event.offsetY / canvasZoom });
}

function handleCanvasMouseUp(event) {
    if (isConfiguring || !drawParams) return;

    isDrawing = false;
}

function handleCanvasMouseOut(event) {
    if (isConfiguring || !drawParams) return;

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

function handleToggleButtonClick(event) {
    if (isConfiguring && this.id !== 'btnConfig') return;

    document.getElementById(this.id + '_input').click();
}

function handleToggleInputChange_Default(input, event) {
    const btn = document.getElementById(input.id.replace('_input', ''));

    if (input.checked) {
        btn.classList.add('active');
    } else {
        btn.classList.remove('active');
    }
}

function handleConfigInputChange(event) {
    handleToggleInputChange_Default(this, event);

    if (this.checked) {
        resetToggleButtons(this);
        isConfiguring = true;
        isDrawing = false;
        drawParams = null;

        console.log('configging');
    } else {
        isConfiguring = false;
        console.log('not configging');
    }
}

function handleDrawInputChange(event) {
    handleToggleInputChange_Default(this, event);

    if (this.checked) {
        resetToggleButtons(this);
        drawParams = jsonMerge(drawParamsDefaults, JSON.parse(this.getAttribute(dataAttrDrawParams)));
    } else {
        drawParams = null;
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
    if (isConfiguring) return;

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
    if (isConfiguring) return;

    fileInput.name = 'savFileInput';
    fileInput.accept = '.sav';
    fileInput.click();
}

function handleImageButtonClick(event) {
    if (isConfiguring) return;

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
    console.log('fileInputChange');
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
        gameData.bgImageData = fileReader.result;
        loadBGImage();
    }
    fileReader.readAsDataURL(file);
}

function handleSaveFileInputChange(file) {
    const fileReader = new FileReader();
    fileReader.onload = function () {
        resetToDefaults();

        const txt = fileReader.result;
        const newGameData = JSON.parse(txt);
        console.log(1);
        if (newGameData.pathList === undefined) newGameData.pathList = [];
        newGameData.redoPathList = [];

        gameData = newGameData;
        loadBGImage();
        undoButton.disabled = gameData.pathList.length === 0;
    }
    fileReader.readAsText(file);
}
