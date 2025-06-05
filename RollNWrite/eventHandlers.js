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

    resizeCanvas(canvasBaseWidth, canvasBaseHeight);
    redraw();
}

function handleEraseButtonClick(event) {
    lineWidth = 10;
    compOp = 'destination-out';
}

function handleImageButtonClick(event) {
    bgFileInput.click();
}

function handleFileInputChange(event) {
    bgImageData = new Image();
    bgImageData.onload = redraw;
    bgImageData.src = URL.createObjectURL(event.target.files[0]);
}
