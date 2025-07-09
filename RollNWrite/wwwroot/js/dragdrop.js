function dragStart(point) {
    const mappedList = gameData.pathList.map((p, i) => { p.index = i; return p; });
    const sortedByZIndex = mappedList.toSorted((a, b) => b.zIndex - a.zIndex);
    sortedByZIndex.some(pathData => {
        pathShape(pathData);

        switch (pathData.type) {
            case 'line':
                if (!canvasContext.isPointInStroke(point.x, point.y)) return false;
                break;
            case 'circ':
            case 'rect':
            case 'text':
                if (!canvasContext.isPointInPath(point.x, point.y)) return false;
                break;
            default:
                return false;
        }

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