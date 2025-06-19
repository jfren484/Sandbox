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
    defTempBGImageSrc = tempBGImage.src,
    drawParamsDefaults = {
        lineWidth: 2,
        strokeColor: 'black',
        fillColor: 'transparent',
        compOp: 'source-over'
    },
    dataAttrDrawParams = 'data-draw-params',
    canvasZoomMin = 1,
    canvasZoomMax = 2,
    canvasZoomBy = 0.2,
    toolEditConfig = {
        line: {
            formFields: ['lineWidth', 'strokeColor'],
            staticValues: [{name: 'compOp', value: 'source-over'}],
            eventHandler: handleDrawInputChange
        },
        erase: {
            formFields: ['lineWidth'],
            staticValues: [{name: 'compOp', value: 'destination-out'}],
            eventHandler: handleDrawInputChange
        }
    };

let isDrawing,
    editingToolIndex = -1,
    drawParams,
    currentPath,
    canvasBaseWidth = 0,
    canvasBaseHeight = 0,
    canvasZoom,
    bgImage,
    gameData = {
        toolbarButtons: [{
            type: 'line',
            text: 'Draw',
            drawParams: {
                lineWidth: 2,
                strokeColor: 'black',
                compOp: 'source-over'
            }
        },{
            type: 'erase',
            text: 'Erase',
            drawParams: {
                lineWidth: 10,
                compOp: 'destination-out'
            }
        }],
        bgImageData: null,
        pathList: [],
        redoPathList: []
    },
    tempBGImageData,
    tempToolbarButtons = [];

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

    document.getElementById('btnDialogCancel').addEventListener('click', handleDialogCancelClick, false);
    document.getElementById('btnDialogSave').addEventListener('click', handleDialogSaveClick, false);
    document.getElementById('dialogToolType').addEventListener('change', handleDialogToolTypeChange, false);
    document.getElementById('btnDialogToolCancel').addEventListener('click', handleDialogToolCancelClick, false);
    document.getElementById('btnDialogToolSave').addEventListener('click', handleDialogToolSaveClick, false);

    canvas.addEventListener('mousedown', handleCanvasMouseDown, false);
    canvas.addEventListener('touchstart', handleCanvasTouchStart, false);
    canvas.addEventListener('mousemove', handleCanvasMouseMove, false);
    canvas.addEventListener('touchmove', handleCanvasTouchMove, false);
    canvas.addEventListener('mouseup', handleCanvasMouseUp, false);
    canvas.addEventListener('mouseleave', handleCanvasMouseOut, false);
    canvas.addEventListener('touchend', handleCanvasTouchEnd, false);
    canvas.addEventListener('mousewheel', handleCanvasMouseWheel, false);
    canvas.addEventListener('touchcancel', handleCanvasTouchCancel, false);

    resetToDefaults();
    resetToolbarCustomButtons();
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

function resetToolbarCustomButtons() {
    customButtonContainer.innerHTML = '';

    gameData.toolbarButtons.forEach((btnData, index) => {
        const btn = document.createElement('button');
        btn.type = 'button';
        btn.classList.add('toolbarButton');
        btn.id = 'btnCustom' + index;
        btn.textContent = btnData.text;
        customButtonContainer.appendChild(btn);
        btn.addEventListener('click', handleToggleButtonClick, false);

        const input = document.createElement('input');
        input.type = 'checkbox';
        input.id = btn.id + '_input';
        input.setAttribute(dataAttrDrawParams, JSON.stringify(btnData.drawParams));
        customButtonContainer.appendChild(input);
        input.addEventListener('change', handleDrawInputChange, false);
    });
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

function toggleDialogModalSections() {
    document.querySelectorAll('.modalSection').forEach(el => {
        if (el.classList.contains('modalSectionTool') === (editingToolIndex >= 0)) {
            el.classList.remove('visible');
        } else {
            el.classList.add('visible');
        }
    });
}

function resetToolEdit() {
    document.getElementById('toolEditForm').reset();
    document.getElementById('toolEditForm').style.display = 'none';
}

function setupToolEdit(toolDef) {
    document.getElementById('dialogToolType').value = toolDef.type;

    const toolContainer = activateToolEditType(toolDef);

    toolEditConfig[toolDef.type].formFields.forEach(field => {
        toolContainer.querySelector('[name="' + field + '"]').value = toolDef.drawParams[field];
    });    

    document.getElementById('toolEditForm').style.display = 'block';
}

function activateToolEditType(toolDef) {
    document.querySelectorAll('div.dialogToolTypeCont').forEach(el => {
        el.style.display = 'none';
    });

    const toolContainer = document.getElementById('dialogToolTypeCont_' + toolDef.type);

    toolContainer.style.display = 'block';

    return toolContainer;
}

function saveToolEdit(toolDef) {
    const toolContainer = document.getElementById('dialogToolTypeCont_' + toolDef.type);

    toolEditConfig[toolDef.type].formFields.forEach(field => {
        toolDef.drawParams[field] = toolContainer.querySelector('[name="' + field + '"]').value;
    });    

    toolEditConfig[toolDef.type].staticValues.forEach(field => {
        toolDef.drawParams[field.name] = field.value;
    });    
}