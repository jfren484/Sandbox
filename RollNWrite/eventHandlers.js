function handleWindowResize(event) {
    containerStyle = window.getComputedStyle(canvas.parentElement);

    canvas.width = window.innerWidth
        - parseFloat(containerStyle.getPropertyValue('padding-left'))
        - parseFloat(containerStyle.getPropertyValue('padding-right'));
    canvas.height = window.innerHeight
        - toolbar.offsetHeight
        - parseFloat(containerStyle.getPropertyValue('padding-top'))
        - parseFloat(containerStyle.getPropertyValue('padding-bottom'));

    redraw();
}

function handleCanvasMouseDown(event) {
    isDrawing = true;

    currentPath = {
        type: 'line',
        width: lineWidth,
        origin: { x: event.offsetX, y: event.offsetY },
        points: []
    };
    pathList.push(currentPath);

    drawLineStart(currentPath);
}

function handleCanvasMouseMove(event) {
    if (!isDrawing) return;

    currentPath.points.push({ x: event.offsetX, y: event.offsetY });

    drawLineContinue(event.offsetX, event.offsetY, true);
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

function handleImageButtonClick(event) {
    bgFileInput.click();
}

function handleFileInputChange(event) {
    bgImageData = new Image();
    bgImageData.onload = redraw;
    bgImageData.src = URL.createObjectURL(event.target.files[0]);
}
