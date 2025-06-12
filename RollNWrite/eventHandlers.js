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
    if (!drawParams) return;

    event.preventDefault();
    isDrawing = true;

    drawLineStart(point);
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
    if (!isDrawing || !drawParams) return;

    event.preventDefault();
    drawLineContinue(point);
}

function handleCanvasMouseUp(event) {
    handleCanvasPointerEnd(event);
}

function handleCanvasTouchEnd(event) {
    handleCanvasPointerEnd(event);
}

function handleCanvasPointerEnd(event) {
    if (!drawParams) return;

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

function handleCanvasTouchCancel(event) {
}

function handleConfigButtonClick(event) {
    resetToggleButtons(this);
    isDrawing = false;
    drawParams = null;

    modal.style.display = 'block';
}

function handleToggleButtonClick(event) {
    document.getElementById(this.id + '_input').click();
}

function handleDrawInputChange(event) {
    const btn = document.getElementById(this.id.replace('_input', ''));

    if (this.checked) {
        btn.classList.add('active');
        resetToggleButtons(this);
        drawParams = jsonMerge(drawParamsDefaults, JSON.parse(this.getAttribute(dataAttrDrawParams)));
    } else {
        btn.classList.remove('active');
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
