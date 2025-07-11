function dragStart(point) {
    const mappedList = gameData.pathList.map((p, i) => { p.index = i; return p; });
    const sortedByZIndex = mappedList.toSorted((a, b) => b.zIndex - a.zIndex);
    sortedByZIndex.some(pathData => {
        pathShape(pathData);

        const x = point.x * canvasZoom,
            y = point.y * canvasZoom;

        switch (pathData.dragTest) {
            case 'stroke':
                if (!canvasContext.isPointInStroke(x, y)) return false;
                break;
            case 'fill':
                if (!canvasContext.isPointInPath(x, y)) return false;
                break;
            default:
                return false;
        }

        // If we got here, the point is in the path/stroke.

        dragObject =  {
            dragOrigin: point,
            pathOrigin: pathData.origin,
            pathIndex: pathData.index
        };

        // modify the original path's zIndex to be largest to move it to the top
        gameData.pathList[pathData.index].zIndex = sortedByZIndex[0].zIndex + 1;

        return true;
    });
}

function dragMove(point) {
    if (!dragObject) return;

    gameData.pathList[dragObject.pathIndex].origin = {
        x: dragObject.pathOrigin.x + point.x - dragObject.dragOrigin.x,
        y: dragObject.pathOrigin.y + point.y - dragObject.dragOrigin.y
    };

    redraw(redrawBG = false);
}

function dragStop() {
    if (dragObject) {
        pathListAddPath({
            type: 'move',
            objectIndex: dragObject.pathIndex,
            fromPoint: dragObject.pathOrigin,
            toPoint: gameData.pathList[dragObject.pathIndex].origin
        });

        dragObject = null;

        redraw(redrawBG = false);
    }
}