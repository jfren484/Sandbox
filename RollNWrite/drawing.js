function drawImage() {
    if (bgImageData === undefined) return;

    const ratio = Math.min(canvas.width / bgImageData.naturalWidth, canvas.height / bgImageData.naturalHeight);

    canvasContext.clearRect(0, 0, canvas.width, canvas.height);
    canvasContext.drawImage(bgImageData, 0, 0, bgImageData.naturalWidth * ratio, bgImageData.naturalHeight * ratio);
}

function drawLine(lineData) {
    drawLineStart(lineData);

    lineData.points.slice(1).forEach(function (value, index) {
        drawLineContinue(value.x, value.y);
    });

    canvasContext.stroke();
}

function drawLineStart(lineData) {
    canvasContext.lineWidth = lineData.width;
    canvasContext.beginPath();
    canvasContext.moveTo(lineData.origin.x, lineData.origin.y);
}

function drawLineContinue(x, y, stroke = false) {
    canvasContext.lineTo(x, y);
    if (stroke) {
        canvasContext.stroke();
    }
}

function redraw() {
    drawImage();

    pathList.forEach(function (path) {
        switch (path.type) {
            case 'line':
                drawLine(path);
        }
    });
}
