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
    canvasZoomMin = 1,
    canvasZoomMax = 2,
    canvasZoomBy = 0.2,
    toolEditConfig = {
        line: {
            text: '<span style="font-size: 2em;">&#9660;</span>',
            textStyle: { colorProperty: 'color', colorValueType: 'drawParam', colorValue: 'strokeColor' },
            formFields: ['lineWidth', 'strokeColor'],
            staticValues: [{ name: 'compOp', value: 'source-over' }],
            dynamicValues: [],
            clickEventHandler: handleDrawButtonClick,
            isDrawingTool: true,
            buttonClass: 'drawButton'
        },
        circ: {
            text: '<span style="font-size: 2.5em; position: relative; bottom: 0.1em;">&#9679;</span>',
            textStyle: { colorProperty: 'color', colorValueType: 'drawParam', colorValue: 'fillColor' },
            formFields: ['diameter', 'fillColor'],
            staticValues: [],
            dynamicValues: [],
            clickEventHandler: handleDrawButtonClick,
            isDrawingTool: true,
            buttonClass: 'drawButton'
        },
        text: {
            text: 'field',
            textField: 'textValue',
            textStyle: { colorProperty: 'color', colorValueType: 'drawParam', colorValue: 'fillColor', size: '1.25em' },
            formFields: ['textValue', 'fontSize', 'isBold', 'fillColor'],
            staticValues: [],
            dynamicValues: [],
            clickEventHandler: handleDrawButtonClick,
            isDrawingTool: true,
            buttonClass: 'drawButton'
        },
        dyntext: {
            text: '[ T ]',
            textStyle: { colorProperty: 'color', colorValueType: 'drawParam', colorValue: 'fillColor', size: '1.25em' },
            formFields: ['fontSize', 'isBold', 'fillColor'],
            staticValues: [],
            dynamicValues: [],
            clickEventHandler: handleDrawButtonClick,
            isDrawingTool: true,
            buttonClass: 'drawButton'
        },
        erase: {
            text: '<span style="font-size: 2em;">&#9648;</span>',
            textStyle: { colorProperty: 'color', colorValueType: 'static', colorValue: 'pink' },
            formFields: ['lineWidth'],
            staticValues: [{ name: 'compOp', value: 'destination-out' }],
            dynamicValues: [],
            clickEventHandler: handleDrawButtonClick,
            isDrawingTool: true,
            buttonClass: 'drawButton'
        },
        rng: {
            text: 'field',
            textField: 'currentValue',
            textStyle: { colorProperty: 'color', colorValueType: 'static', colorValue: 'black', size: '1.25em' },
            formFields: ['faceCount'],
            staticValues: [],
            dynamicValues: [],
            dynamicValues: [{ source: 'faceCount', dest: 'currentValue' }],
            clickEventHandler: handleRngButtonClick,
            buttonClass: 'rngButton'
        }
    };

let isDrawing,
    editingToolIndex = -1,
    currentToolIndex = -1,
    handlingButtonPress = false,
    currentPath,
    canvasBaseWidth = 0,
    canvasBaseHeight = 0,
    canvasZoom,
    bgImage,
    dragObject,
    gameData = {
        toolbarButtons: [{
            type: 'line',
            lineWidth: 2,
            strokeColor: 'black',
            compOp: 'source-over'
        },{
            type: 'erase',
            lineWidth: 10,
            compOp: 'destination-out'
        },{
            type: 'circ',
            diameter: 25,
            fillColor: 'red',
            compOp: 'source-over'
        },{
            type: 'dyntext',
            fontSize: 25,
            isBold: true,
            fillColor: 'blue',
            compOp: 'source-over'
        },{
            type: 'rng',
            faceCount: 6,
            currentValue: 6
        }],
        bgImageData: null,
        pathList: [],
        redoPathList: []
    },
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

    document.getElementById('btnDialogCancel').addEventListener('click', mainDialogHandleCancelClick, false);
    document.getElementById('btnDialogSave').addEventListener('click', mainDialogHandleSaveClick, false);
    document.getElementById('dialogToolType').addEventListener('change', mainDialogHandleToolTypeChange, false);
    document.getElementById('btnDialogToolAdd').addEventListener('click', mainDialogHandleToolAddClick, false);
    document.getElementById('btnDialogToolCancel').addEventListener('click', mainDialogHandleToolCancelClick, false);
    document.getElementById('btnDialogToolSave').addEventListener('click', mainDialogHandleToolSaveClick, false);
    dialogToolMoveUpButton.addEventListener('click', mainDialogHandleToolMoveUpClick, false);
    dialogToolMoveDownButton.addEventListener('click', mainDialogHandleToolMoveDownClick, false);
    dialogToolDeleteButton.addEventListener('click', mainDialogHandleToolDeleteClick, false);

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

function resetToDefaults() {
    canvasZoom = 1;
    isDrawing = false;
    currentToolIndex = -1;

    handleWindowResize(null);

    undoButton.disabled = true;
    redoButton.disabled = true;
}

function resetToolbarCustomButtons() {
    customButtonContainer.innerHTML = '';

    gameData.toolbarButtons.forEach((btnData, index) => {
        const cfg = toolEditConfig[btnData.type];
        const btn = document.createElement('button');
        btn.type = 'button';
        btn.classList.add('toolbarButton');
        btn.classList.add(cfg.buttonClass);
        btn.id = 'btnCustom' + index;
        btn.innerHTML = cfg.text === 'field' ? btnData[cfg.textField] : cfg.text;
        btn.style[cfg.textStyle.colorProperty] = cfg.textStyle.colorValueType === 'static'
            ? cfg.textStyle.colorValue
            : cfg.textStyle.colorValueType === 'drawParam'
                ? btnData[cfg.textStyle.colorValue]
                : 'black'; 
        if (cfg.textStyle.size) btn.style.fontSize = cfg.textStyle.size;
        btn.setAttribute(dataAttrToolIndex, index);
        customButtonContainer.appendChild(btn);
        btn.addEventListener('click', cfg.clickEventHandler, false);

        if (cfg.isDrawingTool) {
            const input = document.createElement('input');
            input.type = 'checkbox';
            input.id = btn.id + '_input';
            input.setAttribute(dataAttrToolIndex, index);
            customButtonContainer.appendChild(input);
            input.addEventListener('change', handleDrawInputChange, false);
        }
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

function resetDialogToolList() {
    dialogToolsList.innerHTML = '';
    tempToolbarButtons.forEach((btnData, index) => {
        const cfg = toolEditConfig[btnData.type];
        const btn = document.createElement('button');
        btn.type = 'button';
        btn.classList.add('toolbarButton');
        btn.classList.add(cfg.buttonClass);
        btn.id = 'btnCustomTool' + index;
        btn.innerHTML = cfg.text === 'field' ? btnData[cfg.textField] : cfg.text;
        btn.style[cfg.textStyle.colorProperty] = cfg.textStyle.colorValueType === 'static'
            ? cfg.textStyle.colorValue
            : cfg.textStyle.colorValueType === 'drawParam'
                ? btnData[cfg.textStyle.colorValue] : 'black'; 
        if (cfg.textStyle.size) btn.style.fontSize = cfg.textStyle.size;
        dialogToolsList.appendChild(btn);
        btn.addEventListener('click', mainDialogHandleCustomToolButtonClick, false);
    });
}

function resetDialogToolMoveButtons() {
    dialogToolMoveUpButton.disabled = (editingToolIndex === 0) || (editingToolIndex === tempToolbarButtons.length);
    dialogToolMoveDownButton.disabled = (editingToolIndex >= tempToolbarButtons.length - 1);
    dialogToolDeleteButton.disabled = (editingToolIndex === tempToolbarButtons.length);
}

function resetToolEdit() {
    dialogToolDefinitionForm.reset();
    Array.from(document.getElementsByClassName('dialogContentToolSpecific')).forEach(el => {
        el.style.display = 'none';
    });
}

function setupToolEdit(toolDef) {
    const toolContainer = activateToolEditType();

    if (toolDef) {
        document.getElementById('dialogToolType').value = tempToolbarDefType;

        toolEditConfig[tempToolbarDefType].formFields.forEach(field => {
            const input = toolContainer.querySelector('[name="' + field + '"]');
            if (input.type === 'checkbox') {
                input.checked = toolDef[field];
            } else {
                input.value = toolDef[field];
            }
        });
    }

    Array.from(document.getElementsByClassName('dialogContentToolSpecific')).forEach(el => {
        el.style.display = 'block';
    });
    resetDialogToolMoveButtons();
}

function activateToolEditType() {
    document.querySelectorAll('div.dialogToolTypeCont').forEach(el => {
        el.style.display = 'none';
    });

    const toolContainer = document.getElementById('dialogToolTypeCont_' + tempToolbarDefType);

    if (tempToolbarDefType) {
        toolContainer.style.display = 'block';
    }

    return toolContainer;
}

function saveToolEdit() {
    const toolContainer = document.getElementById('dialogToolTypeCont_' + tempToolbarDefType);
    const toolDef = {};

    toolDef.type = tempToolbarDefType;

    toolEditConfig[tempToolbarDefType].formFields.forEach(field => {
        const input = toolContainer.querySelector('[name="' + field + '"]');
        const val = input.type === 'checkbox'
            ? input.checked
            : input.type === 'number'
                ? parseFloat(input.value)
                : input.value;

        toolDef[field] = val;
    });

    toolEditConfig[tempToolbarDefType].staticValues.forEach(field => {
        toolDef[field.name] = field.value;
    });

    toolEditConfig[tempToolbarDefType].dynamicValues.forEach(field => {
        toolDef[field.dest] = toolDef[field.source];
    });

    return toolDef;
}

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