const
    toolbar = document.getElementById('toolbar'),
    undoButton = document.getElementById('btnUndo'),
    redoButton = document.getElementById('btnRedo'),
    customButtonContainer = document.getElementById('toolbarCustomButtons'),
    canvasContainer = document.getElementById('canvasCont'),
    bgCanvas = document.getElementById('bgCanvas'),
    bgCanvasContext = bgCanvas.getContext('2d'),
    canvas = document.getElementById('gameCanvas'),
    canvasContext = canvas.getContext('2d'),
    fileInput = document.getElementById('fileInput'),
    modalDialog = document.getElementById('modalDialog'),
    tempBGImage = document.getElementById('imgBG'),
    dialogToolsList = document.getElementById('dialogToolsList'),
    dialogToolMoveUpButton = document.getElementById('btnDialogToolMoveUp'),
    dialogToolMoveDownButton = document.getElementById('btnDialogToolMoveDown'),
    dialogToolDeleteButton = document.getElementById('btnDialogToolDelete'),
    dialogToolDefinitionForm = document.getElementById('toolEditForm'),
    defTempBGImageSrc = tempBGImage.src,
    dataAttrToolIndex = 'data-tool-index',
    dataAttrPoint = 'data-point',
    canvasZoomLevels = [1, 1.3, 1.8, 2.5, 4.0];

let isDrawing,
    currentToolIndex = -1,
    currentToolLockOn = false,
    handlingButtonPress = false,
    currentPath,
    canvasBaseWidth = 0,
    canvasBaseHeight = 0,
    canvasZoom,
    canvasZoomIndex = 0,
    bgImage,
    dragObject,
    gameData = {
        toolbarButtons: [{
            type: 'line',
            lineWidth: 8,
            strokeColor: 'black',
            dragTest: 'stroke',
            compOp: 'source-over'
        }, {
            type: 'erase',
            lineWidth: 10,
            dragTest: 'stroke',
            compOp: 'destination-out'
        }, {
            type: 'circ',
            diameter: 40,
            fillColor: 'red',
            strokeColor: 'blue',
            lineWidth: 5,
            dragTest: 'stroke',
            compOp: 'source-over'
        }, {
            type: 'rect',
            width: 40,
            height: 35,
            fillColor: 'yellow',
            strokeColor: 'purple',
            lineWidth: 5,
            dragTest: 'stroke',
            compOp: 'source-over'
        }, {
            type: 'dyntext',
            fontSize: 25,
            isBold: true,
            fillColor: 'blue',
            dragTest: 'fill',
            compOp: 'source-over'
        }, {
            type: 'rng',
            faceCount: 6,
            currentValue: 6,
            fillColor: 'white',
            fontColor: 'black',
            strokeColor: 'black',
            lineWidth: 3
        }],
        bgImageData: null,
        pathList: [],
        redoPathList: []
    },
    editingToolIndex = -1,
    toolEditChanged = false,
    tempBGImageData,
    tempToolbarButtons = [],
    tempToolbarDefType;

initialize();

function initialize() {
    window.addEventListener('resize', handleWindowResize, false);

    toolbar.classList.add('horiz');
    document.getElementById('btnBGImage').addEventListener('click', handleImageButtonClick, false);
    document.getElementById('btnSave').addEventListener('click', handleSaveButtonClick, false);
    document.getElementById('btnLoad').addEventListener('click', handleLoadButtonClick, false);
    undoButton.addEventListener('click', handleUndoButtonClick, false);
    redoButton.addEventListener('click', handleRedoButtonClick, false);
    document.getElementById('btnConfig').addEventListener('click', handleConfigButtonClick, false);
    fileInput.addEventListener('change', handleFileInputChange, false);

    canvas.addEventListener('mousedown', handleCanvasMouseDown, false);
    canvas.addEventListener('touchstart', handleCanvasTouchStart, false);
    canvas.addEventListener('mousemove', handleCanvasMouseMove, false);
    canvas.addEventListener('touchmove', handleCanvasTouchMove, false);
    canvas.addEventListener('mouseup', handleCanvasMouseUp, false);
    canvas.addEventListener('mouseleave', handleCanvasMouseOut, false);
    canvas.addEventListener('touchend', handleCanvasTouchEnd, false);
    canvas.addEventListener('mousewheel', handleCanvasMouseWheel, false);
    canvas.addEventListener('touchcancel', handleCanvasTouchCancel, false);

    initializeMainDialogHandlers();

    resetToDefaults();
    resetToolbarCustomButtons();
}

function resetToDefaults() {
    canvasZoom = 1;
    currentToolIndex = -1;
    cancelCanvasOperations();

    handleWindowResize(null);

    undoButton.disabled = true;
    redoButton.disabled = true;
}

function resetToolbarCustomButtons() {
    customButtonContainer.innerHTML = '';

    gameData.toolbarButtons.forEach((btnData, index) => {
        const cfg = toolConfig[btnData.type];
        const btn = document.createElement('button');
        btn.type = 'button';
        btn.classList.add('toolbarButton');
        btn.classList.add(cfg.buttonClass);
        btn.id = 'btnCustom' + index;

        if (typeof cfg.text === 'function') {
            btn.appendChild(cfg.text(btnData));
        } else {
            btn.innerHTML = cfg.text === 'field'
                ? btnData[cfg.textField]
                : cfg.text;
        }

        btn.title = typeof cfg.altText === 'function'
            ? cfg.altText(btnData)
            : cfg.altText;

        if (cfg.textStyle.colorProperty) {
            btn.style[cfg.textStyle.colorProperty] = cfg.textStyle.colorValueType === 'static'
                ? cfg.textStyle.colorValue
                : cfg.textStyle.colorValueType === 'drawParam'
                    ? btnData[cfg.textStyle.colorValue] : 'black';
        }
        if (cfg.textStyle.size) btn.style.fontSize = cfg.textStyle.size;

        if (btnData.type === 'rng') {
            btn.style.backgroundColor = btnData.fillColor;
            btn.style.color = btnData.fontColor;
            btn.style.borderColor = btnData.strokeColor;
            btn.style.borderWidth = btnData.lineWidth + 'px';
        }

        btn.setAttribute(dataAttrToolIndex, index);
        customButtonContainer.appendChild(btn);
        btn.addEventListener('click', cfg.clickEventHandler, false);
    });
}

function resizeCanvas(width, height) {
    bgCanvas.width = width * canvasZoom;
    bgCanvas.height = height * canvasZoom;
    canvas.width = width * canvasZoom;
    canvas.height = height * canvasZoom;
}

/*
function jsonMerge() {
    const a = [].slice.call(arguments).filter(el => Object.keys(el).length !== 0);
    let i = 0;

    while (a[i]) {
        a[i] = JSON.stringify(a[i++]).slice(1, -1);
    }

    return JSON.parse("{" + a.join() + "}");
}
*/

function randomize(btn, iteration = 0) {
    btn.disabled = true;
    const index = parseInt(btn.getAttribute(dataAttrToolIndex));

    let newValue = -1;
    do {
        newValue = Math.floor(Math.random() * gameData.toolbarButtons[index].faceCount) + 1;
    } while (newValue == gameData.toolbarButtons[index].currentValue);

    btn.innerHTML = newValue;
    gameData.toolbarButtons[index].currentValue = newValue;

    if (Math.random() > iteration / 10.0) {
        setTimeout(function () { randomize(btn, iteration + 1) }, 200);
    } else {
        btn.disabled = false;
    }
}

function cancelCanvasOperations() {
    isDrawing = false;
    dragStop();

    if (currentToolIndex >= 0 && !currentToolLockOn) {
        currentToolIndex = -1;
        resetToggleButtons();
    }
}