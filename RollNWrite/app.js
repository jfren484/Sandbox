const
    toolbar = document.getElementById('toolbar'),
    bgImageButton = document.getElementById('btnBGImage'),
    drawButton = document.getElementById('btnDraw'),
    eraseButton = document.getElementById('btnErase'),
    saveButton = document.getElementById('btnSave'),
    loadButton = document.getElementById('btnLoad'),
    undoButton = document.getElementById('btnUndo'),
    redoButton = document.getElementById('btnRedo'),
    configButton = document.getElementById('btnConfig'),
    canvasContainer = document.getElementById('canvasCont'),
    bgCanvas = document.getElementById('bgCanvas'),
    bgCanvasContext = bgCanvas.getContext('2d'),
    canvas = document.getElementById('gameCanvas'),
    canvasContext = canvas.getContext('2d'),
    fileInput = document.getElementById('fileInput'),
    modal = document.getElementById('modal'),
    drawParamsDefaults = {
        lineWidth: 2,
        strokeColor: 'black',
        fillColor: 'transparent',
        compOp: 'source-over'
    },
    dataAttrDrawParams = 'data-draw-params',
    canvasZoomMin = 1,
    canvasZoomMax = 2,
    canvasZoomBy = 0.2;

let isDrawing,
    drawParams,
    currentPath,
    canvasBaseWidth = 0,
    canvasBaseHeight = 0,
    canvasZoom,
    bgImage,
    gameData = {
        bgImageData: null,
        pathList: [],
        redoPathList: []
    };

initialize();

function initialize() {
    window.addEventListener('resize', handleWindowResize, false);

    toolbar.classList.add('horiz');
    bgImageButton.addEventListener('click', handleImageButtonClick, false);
    saveButton.addEventListener('click', handleSaveButtonClick, false);
    loadButton.addEventListener('click', handleLoadButtonClick, false);
    undoButton.addEventListener('click', handleUndoButtonClick, false);
    redoButton.addEventListener('click', handleRedoButtonClick, false);
    configButton.addEventListener('click', handleConfigButtonClick, false);
    fileInput.addEventListener('change', handleFileInputChange, false);

    drawButton.addEventListener('click', handleToggleButtonClick, false);
    eraseButton.addEventListener('click', handleToggleButtonClick, false);
    document.getElementById('btnDraw_input').addEventListener('change', handleDrawInputChange, false);
    document.getElementById('btnErase_input').addEventListener('change', handleDrawInputChange, false);

    canvas.addEventListener('mousedown', handleCanvasMouseDown, false);
    canvas.addEventListener('mousemove', handleCanvasMouseMove, false);
    canvas.addEventListener('mouseup', handleCanvasMouseUp, false);
    canvas.addEventListener('mouseleave', handleCanvasMouseOut, false);
    canvas.addEventListener('mousewheel', handleCanvasMouseWheel, false);

    canvas.addEventListener('touchstart', handleCanvasTouchStart, false);
    canvas.addEventListener('touchend', handleCanvasTouchEnd, false);
    canvas.addEventListener('touchmove', handleCanvasTouchMove, false);
    canvas.addEventListener('touchcancel', handleCanvasTouchCancel, false);

    resetToDefaults();
}

function createButton() {
    const btn = document.createElement('input');
    btn.type = '';
    btn.addEventListener('click', handleDrawButtonClick, false);
    document.body.appendChild(btn);
}

function resetToDefaults() {
    canvasZoom = 1;
    isDrawing = false;
    drawParams = null;

    handleWindowResize(null);

    undoButton.disabled = true;
    redoButton.disabled = true;
}

function resizeCanvas(width, height) {
    bgCanvas.width = width * canvasZoom;
    bgCanvas.height = height * canvasZoom;
    canvas.width = width * canvasZoom;
    canvas.height = height * canvasZoom;
}

function jsonMerge() {
    const a = [].slice.call(arguments).filter(el => Object.keys(el).length !== 0);
    let i = 0;

    while (a[i]) {
        a[i] = JSON.stringify(a[i++]).slice(1, -1);
    }

    return JSON.parse("{" + a.join() + "}");
}
