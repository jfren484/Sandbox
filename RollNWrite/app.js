const
    canvas = document.getElementById('myCanvas'),
    canvasContext = canvas.getContext('2d'),
    pathList = [];

let isDrawing = false;
let currentPath;

initialize();

function initialize() {
    window.addEventListener('resize', resizeCanvas, false);

    canvas.addEventListener('mousedown', startDraw, false);
    canvas.addEventListener('mousemove', moveDraw, false);
    canvas.addEventListener('mouseup', stopDraw, false);

    resizeCanvas();
}

function startDraw(ev) {
    isDrawing = true;

    currentPath = [{ x: ev.offsetX, y: ev.offsetY }];
    pathList.push(currentPath);

    canvasContext.beginPath();
    canvasContext.moveTo(ev.offsetX, ev.offsetY);
}

function moveDraw(ev) {
    if (!isDrawing) return;

    currentPath.push({ x: ev.offsetX, y: ev.offsetY });

    canvasContext.lineTo(ev.offsetX, ev.offsetY);
    canvasContext.stroke();
}

function stopDraw() {
    isDrawing = false;
}

// Display custom canvas. In this case it's a blue, 5 pixel 
// border that resizes along with the browser window.
function redraw() {
}

// Runs each time the DOM window resize event fires.
// Resets the canvas dimensions to match window,
// then draws the new borders accordingly.
function resizeCanvas() {
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;
    redraw();
}
