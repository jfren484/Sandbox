  function drawBGImage() {
    bgCanvasContext.clearRect(0, 0, bgCanvas.width, bgCanvas.height);

    if (!bgImage) return;

    // Scale to fit the canvas without distortion
    const ratio = Math.min(bgCanvas.width / bgImage.naturalWidth, bgCanvas.height / bgImage.naturalHeight);

    bgCanvasContext.drawImage(bgImage, 0, 0, bgImage.naturalWidth * ratio, bgImage.naturalHeight * ratio);
}

function drawLine(pathData) {
    pathLine(pathData);

    canvasContext.lineWidth = pathData.width * canvasZoom;
    canvasContext.lineCap = 'round';
    canvasContext.lineJoin = 'round';
    canvasContext.strokeStyle = pathData.color;
    canvasContext.globalCompositeOperation = pathData.op;
    canvasContext.stroke();
}

function drawCircle(pathData) {
    pathCircle(pathData);

    canvasContext.fillStyle = pathData.color;
    canvasContext.globalCompositeOperation = pathData.op;
    canvasContext.fill();
}

function drawRectangle(pathData) {
    pathRectangle(pathData);

    canvasContext.fillStyle = pathData.color;
    canvasContext.globalCompositeOperation = pathData.op;
    canvasContext.fill();
}

function drawText(pathData) {
    pathTextBox(pathData);
    canvasContext.fillStyle = '#ccc';// 'transparent';
    canvasContext.fill();

    setTextAttributes(pathData);
    canvasContext.fillStyle = pathData.color;
    canvasContext.globalCompositeOperation = 'source-over';
    canvasContext.fillText(pathData.textValue, pathData.origin.x * canvasZoom, pathData.origin.y * canvasZoom);
}

function addNewLineAndDraw(point) {
    currentPath = {
        type: 'line',
        width: gameData.toolbarButtons[currentToolIndex].lineWidth,
        color: gameData.toolbarButtons[currentToolIndex].strokeColor,
        op: gameData.toolbarButtons[currentToolIndex].compOp,
        origin: point,
        pointOffsets: []
    };
    pathListAddPath(currentPath);

    drawLine(currentPath);
}

function addPointToLineAndDraw(point) {
    currentPath.pointOffsets.push({
        offsetX: point.x - currentPath.origin.x,
        offsetY: point.y - currentPath.origin.y
    });

    pathLineContinue(point);

    canvasContext.stroke();
}

function addNewCircleAndDraw(point) {
    currentPath = {
        type: 'circ',
        diameter: gameData.toolbarButtons[currentToolIndex].diameter,
        color: gameData.toolbarButtons[currentToolIndex].fillColor,
        op: gameData.toolbarButtons[currentToolIndex].compOp,
        origin: point
    };
    pathListAddPath(currentPath);

    drawCircle(currentPath);
}

function addNewRectangleAndDraw(point) {
    currentPath = {
        type: 'rect',
        width: gameData.toolbarButtons[currentToolIndex].width,
        height: gameData.toolbarButtons[currentToolIndex].height,
        color: gameData.toolbarButtons[currentToolIndex].fillColor,
        op: gameData.toolbarButtons[currentToolIndex].compOp,
        origin: point
    };
    pathListAddPath(currentPath);

    drawRectangle(currentPath);
}

function addNewTextAndDraw(point) {
    currentPath = {
        type: 'text',
        textValue: gameData.toolbarButtons[currentToolIndex].textValue,
        fontSize: gameData.toolbarButtons[currentToolIndex].fontSize,
        color: gameData.toolbarButtons[currentToolIndex].fillColor,
        op: gameData.toolbarButtons[currentToolIndex].compOp,
        origin: point
    };
    addBoundingBoxForText(currentPath);
    pathListAddPath(currentPath);

    drawText(currentPath);
}

function addNewDynamicTextAndDraw(point, textValue) {
    currentPath = {
        type: 'text',
        textValue: textValue,
        fontSize: gameData.toolbarButtons[currentToolIndex].fontSize,
        color: gameData.toolbarButtons[currentToolIndex].fillColor,
        op: gameData.toolbarButtons[currentToolIndex].compOp,
        origin: point
    };
    addBoundingBoxForText(currentPath);
    pathListAddPath(currentPath);

    drawText(currentPath);
}

function pathShape(pathData) {
    switch (pathData.type) {
        case 'line':
            pathLine(pathData);
            break;
        case 'circ':
            pathCircle(pathData);
            break;
        case 'rect':
            pathRectangle(pathData);
            break;
        case 'text':
            pathTextBox(pathData);
            break;
    }
}

function pathLine(pathData) {
    pathLineStart(pathData);

    pathData.pointOffsets.forEach(function (value, index) {
        pathLineContinue({
            x: pathData.origin.x + value.offsetX,
            y: pathData.origin.y + value.offsetY
        });
    });
}

function pathLineStart(pathData) {
    canvasContext.beginPath();
    canvasContext.moveTo(pathData.origin.x * canvasZoom, pathData.origin.y * canvasZoom);
    canvasContext.lineTo(pathData.origin.x * canvasZoom, pathData.origin.y * canvasZoom);
}

function pathLineContinue(point) {
    canvasContext.lineTo(point.x * canvasZoom, point.y * canvasZoom);
}

function pathCircle(pathData) {
    canvasContext.beginPath();
    canvasContext.arc(pathData.origin.x * canvasZoom, pathData.origin.y * canvasZoom, (pathData.diameter / 2.0) * canvasZoom, 0, 2 * Math.PI);
}

function pathRectangle(pathData) {
    canvasContext.beginPath();
    canvasContext.rect(
        (pathData.origin.x - pathData.width / 2) * canvasZoom,
        (pathData.origin.y - pathData.height / 2) * canvasZoom,
        pathData.width * canvasZoom,
        pathData.height * canvasZoom
    );
}

function pathTextBox(pathData) {
    canvasContext.beginPath();
    canvasContext.rect(
        (pathData.origin.x + pathData.boundingBox.left) * canvasZoom,
        (pathData.origin.y + pathData.boundingBox.top) * canvasZoom,
        (pathData.boundingBox.width) * canvasZoom,
        (pathData.boundingBox.height) * canvasZoom
    );
}

function addBoundingBoxForText(pathData) {
    setTextAttributes(currentPath);
    let meas = canvasContext.measureText(currentPath.textValue);

    currentPath.boundingBox = {
        width: meas.width,
        height: meas.actualBoundingBoxAscent + meas.actualBoundingBoxDescent,
        left: -meas.actualBoundingBoxLeft,
        top: -meas.actualBoundingBoxAscent
    }
}

function setTextAttributes(pathData) {
    canvasContext.font = (pathData.fontSize * canvasZoom) + 'px sans-serif';
    canvasContext.textAlign = 'center';
    canvasContext.textBaseline = 'middle';
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
    if (path.type !== 'move') {
        const zIndexMax = gameData.pathList.length === 0 ? -1 : gameData.pathList.toSorted((a, b) => b.zIndex - a.zIndex)[0].zIndex;
        path.zIndex = zIndexMax + 1;
    }

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
    const pathToMove = gameData.pathList.pop();
    gameData.redoPathList.push(pathToMove);

    redoButton.disabled = false;
    if (gameData.pathList.length === 0) {
        undoButton.disabled = true;
    }

    return pathToMove;
}

function redraw(redrawBG = true) {
    if (redrawBG) drawBGImage();

    canvasContext.clearRect(0, 0, canvas.width, canvas.height);
    gameData.pathList.toSorted((a, b) => a.zIndex - b.zIndex).forEach(function (path) {
        if (dragObject && path === gameData.pathList[dragObject.pathIndex]) {
            addShadow();
        }

        switch (path.type) {
            case 'line':
                drawLine(path);
                break;
            case 'circ':
                drawCircle(path);
                break;
            case 'rect':
                drawRectangle(path);
                break;
            case 'text':
                drawText(path);
                break;
        }

        resetShadow();
    });
}

function undoDraw() {
    if (gameData.pathList.length === 0) return;

    const pathToMove = pathListRemovePath();
    if (pathToMove.type === 'move') {
        gameData.pathList[pathToMove.objectIndex].origin = pathToMove.fromPoint;
    }
    redraw();
}

function redoDraw() {
    if (gameData.redoPathList.length === 0) return;

    const pathToMove = gameData.redoPathList.pop();
    pathListAddPath(pathToMove, resetRedo = false);
    if (pathToMove.type === 'move') {
        gameData.pathList[pathToMove.objectIndex].origin = pathToMove.toPoint;
    }
    redraw();
}

function addShadow() {
    canvasContext.shadowColor = "black";
    canvasContext.shadowBlur = 10;
    canvasContext.shadowOffsetX = 0;
    canvasContext.shadowOffsetY = 0;
}

function resetShadow() {
    canvasContext.shadowColor = "transparent";
    canvasContext.shadowBlur = 0;
    canvasContext.shadowOffsetX = 0;
    canvasContext.shadowOffsetY = 0;
}