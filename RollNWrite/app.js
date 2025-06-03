const
    toolbar = document.getElementById('toolbar'),
    bgImageButton = document.getElementById('bgImageButton'),
    bgFileInput = document.getElementById('bgFileInput'),
    canvas = document.getElementById('gameCanvas'),
    canvasContext = canvas.getContext('2d'),
    pathList = [];

let isDrawing = false,
    lineWidth = 2,
    currentPath,
    bgImageData;

initialize();

function initialize() {
    window.addEventListener('resize', handleWindowResize, false);

    toolbar.classList.add('horiz');
    bgImageButton.addEventListener('click', handleImageButtonClick, false);
    bgFileInput.addEventListener('change', handleFileInputChange, false);

    canvas.addEventListener('mousedown', handleCanvasMouseDown, false);
    canvas.addEventListener('mousemove', handleCanvasMouseMove, false);
    canvas.addEventListener('mouseup', handleCanvasMouseUp, false);
    canvas.addEventListener('mouseout', handleCanvasMouseOut, false);

    handleWindowResize(null);
}
