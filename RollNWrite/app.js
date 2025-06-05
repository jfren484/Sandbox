const
    toolbar = document.getElementById('toolbar'),
    bgImageButton = document.getElementById('btnBGImage'),
    bgFileInput = document.getElementById('bgFileInput'),
    eraseButton = document.getElementById('btnErase'),
    saveButton = document.getElementById('btnSave'),
    loadButton = document.getElementById('btnLoad'),
    canvasContainer = document.getElementById('canvasCont'),
    bgCanvas = document.getElementById('bgCanvas'),
    bgCanvasContext = bgCanvas.getContext('2d'),
    canvas = document.getElementById('gameCanvas'),
    canvasContext = canvas.getContext('2d'),
    canvasZoomMin = 1,
    canvasZoomMax = 2,
    canvasZoomBy = 0.2;

let isDrawing = false,
    lineWidth = 2,
    strokeColor = 'black',
    fillColor = 'transparent',
    compOp = 'source-over',
    currentPath,
    canvasBaseWidth = 0,
    canvasBaseHeight = 0,
    canvasZoom = 1,
    gameData = {
        bgImageData: null,
        pathList: []
    };

initialize();

function initialize() {
    window.addEventListener('resize', handleWindowResize, false);

    toolbar.classList.add('horiz');
    bgImageButton.addEventListener('click', handleImageButtonClick, false);
    bgFileInput.addEventListener('change', handleFileInputChange, false);
    eraseButton.addEventListener('click', handleEraseButtonClick, false);
    saveButton.addEventListener('click', handleSaveButtonClick, false);
    loadButton.addEventListener('click', handleLoadButtonClick, false);

    canvas.addEventListener('mousedown', handleCanvasMouseDown, false);
    canvas.addEventListener('mousemove', handleCanvasMouseMove, false);
    canvas.addEventListener('mouseup', handleCanvasMouseUp, false);
    canvas.addEventListener('mouseout', handleCanvasMouseOut, false);
    canvas.addEventListener('mousewheel', handleCanvasMouseWheel, false);

    handleWindowResize(null);
}

function resizeCanvas(width, height) {
    bgCanvas.width = width * canvasZoom;
    bgCanvas.height = height * canvasZoom;
    canvas.width = width * canvasZoom;
    canvas.height = height * canvasZoom;
}