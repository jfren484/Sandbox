function drawBGImage() {
    if (bgImageData === undefined) return;

    // Scale to fit the canvas without distortion
    const ratio = Math.min(bgCanvas.width / bgImageData.naturalWidth, bgCanvas.height / bgImageData.naturalHeight);

    bgCanvasContext.clearRect(0, 0, bgCanvas.width, bgCanvas.height);
    bgCanvasContext.drawImage(bgImageData, 0, 0, bgImageData.naturalWidth * ratio, bgImageData.naturalHeight * ratio);
}

function drawLine(lineData) {
    drawLineStart_internal(lineData);

    lineData.points.forEach(function (value, index) {
        drawLineContinue_internal(value);
    });

    canvasContext.stroke();
}

function drawLineStart(point) {
    currentPath = {
        type: 'line',
        width: lineWidth,
        color: strokeColor,
        op: compOp,
        origin: point,
        points: []
    };
    pathList.push(currentPath);

    drawLineStart_internal(currentPath);
    drawLineContinue(point);
}

function drawLineStart_internal(lineData) {
    canvasContext.lineWidth = lineData.width * canvasZoom;
    canvasContext.lineCap = 'round';
    canvasContext.lineJoin = 'round';
    canvasContext.strokeStyle = lineData.color;
    canvasContext.globalCompositeOperation = lineData.op;
    canvasContext.beginPath();
    canvasContext.moveTo(lineData.origin.x * canvasZoom, lineData.origin.y * canvasZoom);
}

function drawLineContinue(point) {
    currentPath.points.push(point);
    drawLineContinue_internal(point);
    canvasContext.stroke();
}

function drawLineContinue_internal(point) {
    canvasContext.lineTo(point.x * canvasZoom, point.y * canvasZoom);
}

function redraw() {
    drawBGImage();

    pathList.forEach(function (path) {
        switch (path.type) {
            case 'line':
                drawLine(path);
        }
    });
}
