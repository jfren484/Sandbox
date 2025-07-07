function dragStart(point) {
    for (var i = gameData.pathList.length - 1; i >= 0; i--) {
        var pathData = gameData.pathList[i];
        pathShape(pathData);

        if (canvasContext.isPointInPath(point.x, point.y)) {
            return {
                dragOrigin: point,
                pathOrigin: gameData.pathList[i].origin,
                pathIndex: i
            };
        }
    }
}

function dragMove(point) {
    gameData.pathList[dragObject.pathIndex].origin = {
        x: dragObject.pathOrigin.x + point.x - dragObject.dragOrigin.x,
        y: dragObject.pathOrigin.y + point.y - dragObject.dragOrigin.y
    };

    redraw(redrawBG = false);
}

function dragStop() {
    dragObject = null;
}