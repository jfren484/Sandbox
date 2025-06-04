function handleWindowResize(event) {
    containerStyle = window.getComputedStyle(canvas.parentElement);

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

    drawLineStart({ x: event.offsetX, y: event.offsetY });
}

function handleCanvasMouseMove(event) {
    if (!isDrawing) return;

    drawLineContinue({ x: event.offsetX, y: event.offsetY });
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
    //    console.log(event.wheelDeltaY);
    //    console.log(event.offsetX);
    //    console.log(event.offsetY);
    if (event.wheelDeltaY > 0) {
        canvasZoom = Math.min(canvasZoomMax, canvasZoom + 1);
    } else {
        canvasZoom = Math.max(canvasZoomMin, canvasZoom - 1);
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
