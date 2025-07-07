  function drawBGImage() {
    bgCanvasContext.clearRect(0, 0, bgCanvas.width, bgCanvas.height);

    if (!bgImage) return;

    // Scale to fit the canvas without distortion
    const ratio = Math.min(bgCanvas.width / bgImage.naturalWidth, bgCanvas.height / bgImage.naturalHeight);

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
        width: gameData.toolbarButtons[currentToolIndex].lineWidth,
        color: gameData.toolbarButtons[currentToolIndex].strokeColor,
        op: gameData.toolbarButtons[currentToolIndex].compOp,
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

function drawCircle(point) {
    currentPath = {
        type: 'circ',
        diameter: gameData.toolbarButtons[currentToolIndex].diameter,
        color: gameData.toolbarButtons[currentToolIndex].fillColor,
        op: gameData.toolbarButtons[currentToolIndex].compOp,
        origin: point
    };
    pathListAddPath(currentPath);

    drawCircle_internal(currentPath);
    canvasContext.fill();
}

function drawCircle_internal(lineData) {
    canvasContext.fillStyle = lineData.color;
    canvasContext.globalCompositeOperation = lineData.op;
    canvasContext.beginPath();
    canvasContext.arc(lineData.origin.x * canvasZoom, lineData.origin.y * canvasZoom, (lineData.diameter / 2.0) * canvasZoom, 0, 2 * Math.PI);
}

function drawText(point) {
    currentPath = {
        type: 'text',
        textValue: gameData.toolbarButtons[currentToolIndex].textValue,
        fontSize: gameData.toolbarButtons[currentToolIndex].fontSize,
        color: gameData.toolbarButtons[currentToolIndex].fillColor,
        op: gameData.toolbarButtons[currentToolIndex].compOp,
        origin: point
    };
    pathListAddPath(currentPath);

    drawText_internal(currentPath);
}

function drawDynamicText(point, textValue) {
    currentPath = {
        type: 'text',
        textValue: textValue,
        fontSize: gameData.toolbarButtons[currentToolIndex].fontSize,
        color: gameData.toolbarButtons[currentToolIndex].fillColor,
        op: gameData.toolbarButtons[currentToolIndex].compOp,
        origin: point
    };
    pathListAddPath(currentPath);

    drawText_internal(currentPath);
}

function drawText_internal(pathData) {
    canvasContext.font = (pathData.fontSize * canvasZoom) + 'px sans-serif';
    canvasContext.textAlign = 'center';
    canvasContext.textBaseline = 'middle';
    canvasContext.fillStyle = pathData.color;
    canvasContext.globalCompositeOperation = 'source-over';
    canvasContext.fillText(pathData.textValue, pathData.origin.x * canvasZoom, pathData.origin.y * canvasZoom);
}

function loadBGImage() {
    if (!gameData.bgImageData) {
        bgImage = null;
        return;
    }

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
                break;
            case 'text':
                drawText_internal(path);
                break;
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
