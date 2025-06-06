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
    isDrawing = true;

    drawLineStart({ x: event.offsetX / canvasZoom, y: event.offsetY / canvasZoom });
}

function handleCanvasMouseMove(event) {
    if (!isDrawing) return;

    drawLineContinue({ x: event.offsetX / canvasZoom, y: event.offsetY / canvasZoom });
}

function handleCanvasMouseUp(event) {
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

function handleEraseButtonClick(event) {
    lineWidth = 10;
    compOp = 'destination-out';
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
        gameData = JSON.parse(txt);
        loadBGImage();
    }
    fileReader.readAsText(file);
}
