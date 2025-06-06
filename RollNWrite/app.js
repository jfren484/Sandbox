const
    toolbar = document.getElementById('toolbar'),
    bgImageButton = document.getElementById('btnBGImage'),
    eraseButton = document.getElementById('btnErase'),
    saveButton = document.getElementById('btnSave'),
    loadButton = document.getElementById('btnLoad'),
    undoButton = document.getElementById('btnUndo'),
    redoButton = document.getElementById('btnRedo'),
    canvasContainer = document.getElementById('canvasCont'),
    bgCanvas = document.getElementById('bgCanvas'),
    bgCanvasContext = bgCanvas.getContext('2d'),
    canvas = document.getElementById('gameCanvas'),
    canvasContext = canvas.getContext('2d'),
    fileInput = document.getElementById('fileInput'),
    canvasZoomMin = 1,
    canvasZoomMax = 2,
    canvasZoomBy = 0.2;

let isDrawing,
    lineWidth,
    strokeColor,
    fillColor,
    compOp,
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
    eraseButton.addEventListener('click', handleEraseButtonClick, false);
    saveButton.addEventListener('click', handleSaveButtonClick, false);
    loadButton.addEventListener('click', handleLoadButtonClick, false);
    undoButton.addEventListener('click', handleUndoButtonClick, false);
    redoButton.addEventListener('click', handleRedoButtonClick, false);
    fileInput.addEventListener('change', handleFileInputChange, false);

    canvas.addEventListener('mousedown', handleCanvasMouseDown, false);
    canvas.addEventListener('mousemove', handleCanvasMouseMove, false);
    canvas.addEventListener('mouseup', handleCanvasMouseUp, false);
    canvas.addEventListener('mouseout', handleCanvasMouseOut, false);
    canvas.addEventListener('mousewheel', handleCanvasMouseWheel, false);

    resetToDefaults();
}

function resetToDefaults() {
    canvasZoom = 1;
    isDrawing = false;
    lineWidth = 2;
    strokeColor = 'black';
    fillColor = 'transparent';
    compOp = 'source-over';

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