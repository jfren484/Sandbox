const
    toolbar = document.getElementById('toolbar'),
    canvas = document.getElementById('gameCanvas'),
    canvasContext = canvas.getContext('2d'),
    pathList = [];

let isDrawing = false;
let currentPath;

initialize();

function initialize() {
    toolbar.classList.add('horiz');
    //toolbar.innerHTML += 'Hello World!';

    window.addEventListener('resize', resizeCanvas, false);

    canvas.addEventListener('mousedown', startDraw, false);
    canvas.addEventListener('mousemove', moveDraw, false);
    canvas.addEventListener('mouseup', stopDraw, false);
    canvas.addEventListener('mouseout', stopDraw, false);

    resizeCanvas();
}

function startDraw(ev) {
    isDrawing = true;

    currentPath = { type: 'line', points: [{ x: ev.offsetX, y: ev.offsetY }] };
    pathList.push(currentPath);

    drawLineStart(ev.offsetX, ev.offsetY);
}

function moveDraw(ev) {
    if (!isDrawing) return;

    currentPath.points.push({ x: ev.offsetX, y: ev.offsetY });

    drawLineContinue(ev.offsetX, ev.offsetY);
}

function stopDraw(ev) {
    // Without a moveDraw here, if the mouse moves quickly outside the canvas,
    // the line doesn't reach the edge of the canvas.
    moveDraw(ev);

    isDrawing = false;
}

function drawLineStart(x, y) {
    canvasContext.beginPath();
    canvasContext.moveTo(x, y);
}

function drawLineContinue(x, y) {
    canvasContext.lineTo(x, y);
    canvasContext.stroke();
}

function redraw() {
    pathList.forEach(function (path) {
        path.points.forEach(function (value, index) {
            if (index === 0) {
                drawLineStart(value.x, value.y);
            } else {
                drawLineContinue(value.x, value.y);
            }
        });
    });
}

function resizeCanvas() {
    containerStyle = window.getComputedStyle(canvas.parentElement);

    canvas.width = window.innerWidth
        - parseFloat(containerStyle.getPropertyValue('padding-left'))
        - parseFloat(containerStyle.getPropertyValue('padding-right'));
    canvas.height = window.innerHeight
        - toolbar.offsetHeight
        - parseFloat(containerStyle.getPropertyValue('padding-top'))
        - parseFloat(containerStyle.getPropertyValue('padding-bottom'));

    redraw();
}
