function drawBGImage() {
    if (!bgImage) return;

    // Scale to fit the canvas without distortion
    const ratio = Math.min(bgCanvas.width / bgImage.naturalWidth, bgCanvas.height / bgImage.naturalHeight);

    bgCanvasContext.clearRect(0, 0, bgCanvas.width, bgCanvas.height);
    bgCanvasContext.drawImage(bgImage, 0, 0, bgImage.naturalWidth * ratio, bgImage.naturalHeight * ratio);
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
        width: drawParams.lineWidth,
        color: drawParams.strokeColor,
        op: drawParams.compOp,
        origin: point,
        points: []
    };
    pathListAddPath(currentPath);

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

function loadBGImage() {
    bgImage = new Image();
    bgImage.onload = redraw;
    bgImage.src = gameData.bgImageData;
}

function pathListAddPath(path, resetRedo = true) {
    gameData.pathList.push(path);
    if (resetRedo) {
        gameData.redoPathList.length = 0;
    }

    undoButton.disabled = false;
    if (gameData.redoPathList.length === 0) {
        redoButton.disabled = true;
    }
}

function pathListRemovePath() {
    gameData.redoPathList.push(gameData.pathList.pop());

    redoButton.disabled = false;
    if (gameData.pathList.length === 0) {
        undoButton.disabled = true;
    }
}

function redraw() {
    drawBGImage();

    canvasContext.clearRect(0, 0, canvas.width, canvas.height);
    gameData.pathList.forEach(function (path) {
        switch (path.type) {
            case 'line':
                drawLine(path);
        }
    });
}

function undoDraw() {
    if (gameData.pathList.length === 0) return;

    pathListRemovePath();
    redraw();
}

function redoDraw() {
    if (gameData.redoPathList.length === 0) return;

    pathListAddPath(gameData.redoPathList.pop(), resetRedo = false);
    redraw();
}
