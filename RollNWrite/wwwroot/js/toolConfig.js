const toolConfig = {
    line: {
        text: determinLineText,
        altText: function (toolDef) { return `draw ${toolDef.lineWidth}px ${toolDef.strokeColor} line`; },
        textStyle: { colorProperty: 'color', colorValueType: 'drawParam', colorValue: 'strokeColor', size: '1.6em' },
        formFields: ['lineWidth', 'strokeColor'],
        staticValues: [{ name: 'compOp', value: 'source-over' }, { name: 'dragTest', value: 'stroke' }],
        dynamicValues: [],
        clickEventHandler: handleDrawButtonClick,
        isDrawingTool: true,
        buttonClass: 'drawButton'
    },
    circ: {
        text: determineCircleText,
        altText: function (toolDef) { return `draw ${toolDef.diameter}px diameter circle${toolDef.strokeColor === 'transparent' ? '' : ', ' + toolDef.lineWidth + 'px ' + toolDef.strokeColor + ' stroke'}${toolDef.strokeColor === 'transparent' ? '' : ', ' + toolDef.fillColor + ' fill'}`; },
        textStyle: {},
        formFields: ['diameter', 'fillColor', 'strokeColor', 'lineWidth'],
        staticValues: [{ name: 'compOp', value: 'source-over' }],
        dynamicValues: [{ source: determineDragTest, dest: 'dragTest' }],
        clickEventHandler: handleDrawButtonClick,
        isDrawingTool: true,
        buttonClass: 'drawButton'
    },
    rect: {
        text: determineRectangleText,
        altText: function (toolDef) { return `draw ${toolDef.width}px x ${toolDef.height}px rectangle${toolDef.strokeColor === 'transparent' ? '' : ', ' + toolDef.lineWidth + 'px ' + toolDef.strokeColor + ' stroke'}${toolDef.strokeColor === 'transparent' ? '' : ', ' + toolDef.fillColor + ' fill'}`; },
        textStyle: {},
        formFields: ['width', 'height', 'fillColor', 'strokeColor', 'lineWidth'],
        staticValues: [{ name: 'compOp', value: 'source-over' }],
        dynamicValues: [{ source: determineDragTest, dest: 'dragTest' }],
        clickEventHandler: handleDrawButtonClick,
        isDrawingTool: true,
        buttonClass: 'drawButton'
    },
    text: {
        text: 'field',
        altText: function (toolDef) { return `draw ${toolDef.textValue}`; },
        textField: 'textValue',
        textStyle: { colorProperty: 'color', colorValueType: 'drawParam', colorValue: 'fillColor', size: '1.25em' },
        formFields: ['textValue', 'fontSize', 'isBold', 'fillColor'],
        staticValues: [{ name: 'compOp', value: 'source-over' }, { name: 'dragTest', value: 'fill' }],
        dynamicValues: [],
        clickEventHandler: handleDrawButtonClick,
        isDrawingTool: true,
        buttonClass: 'drawButton'
    },
    dyntext: {
        text: '[ T ]',
        altText: 'draw specified text',
        textStyle: { colorProperty: 'color', colorValueType: 'drawParam', colorValue: 'fillColor', size: '1.25em' },
        formFields: ['fontSize', 'isBold', 'fillColor'],
        staticValues: [{ name: 'compOp', value: 'source-over' }, { name: 'dragTest', value: 'fill' }],
        dynamicValues: [],
        clickEventHandler: handleDrawButtonClick,
        isDrawingTool: true,
        buttonClass: 'drawButton'
    },
    erase: {
        text: '<span style="font-size: 2em;">&#9648;</span>',
        altText: function (toolDef) { return `erase ${toolDef.lineWidth}px line`; },
        textStyle: { colorProperty: 'color', colorValueType: 'static', colorValue: 'pink' },
        formFields: ['lineWidth'],
        staticValues: [{ name: 'compOp', value: 'destination-out' }, { name: 'dragTest', value: 'stroke' }],
        dynamicValues: [],
        clickEventHandler: handleDrawButtonClick,
        isDrawingTool: true,
        buttonClass: 'drawButton'
    },
    rng: {
        text: 'field',
        altText: function (toolDef) { return `roll ${toolDef.faceCount}-sided die`; },
        textField: 'currentValue',
        textStyle: { colorProperty: 'color', colorValueType: 'static', colorValue: 'black', size: '1.25em' },
        formFields: ['faceCount', 'fontColor', 'fillColor', 'strokeColor', 'lineWidth'],
        staticValues: [],
        dynamicValues: [{ type: 'copy', source: 'faceCount', dest: 'currentValue' }],
        clickEventHandler: handleRngButtonClick,
        buttonClass: 'rngButton'
    }
};

function determineDragTest(toolDef) {
    return toolDef.fillColor === 'transparent' ? 'stroke' : 'fill';
}

function determinLineText(toolDef) {
    const span = document.createElement('span');
    span.style.display = 'inline-block';
    span.style.position = 'relative';
    span.style.bottom = '0.08em';
    span.innerHTML = '&#9998;';

    return span;
}

function determineCircleText(toolDef) {
    const strokeAdjust = toolDef.strokeColor === 'transparent' ? 0 : toolDef.lineWidth * 2,
        fullDiameter = toolDef.diameter + strokeAdjust,
        scale = 30.0 / fullDiameter,
        diameter = parseFloat((toolDef.diameter * scale).toFixed(4)),
        borderWidth = parseFloat((toolDef.lineWidth * scale).toFixed(4));

    const span = document.createElement('span');
    span.style.display = 'inline-block';
    span.style.width = diameter + 'px';
    span.style.height = diameter + 'px';
    span.style.position = 'relative';
    span.style.bottom = '-0.1em';
    span.style.borderRadius = '50%';

    if (toolDef.fillColor !== 'transparent') {
        span.style.backgroundColor = toolDef.fillColor;
    }

    if (toolDef.strokeColor !== 'transparent') {
        span.style.borderStyle = 'solid';
        span.style.borderWidth = borderWidth + 'px';
        span.style.borderColor = toolDef.strokeColor;
    }

    return span;
}

function determineRectangleText(toolDef) {
    const strokeAdjust = toolDef.strokeColor === 'transparent' ? 0 : toolDef.lineWidth * 2,
        fullWidth = toolDef.width + strokeAdjust,
        fullHeight = toolDef.height + strokeAdjust,
        scale = Math.min(38.0 / fullWidth, 30.0 / fullHeight),
        width = parseFloat((toolDef.width * scale).toFixed(4)),
        height = parseFloat((toolDef.height * scale).toFixed(4)),
        borderWidth = parseFloat((toolDef.lineWidth * scale).toFixed(4));

    const span = document.createElement('span');
    span.style.display = 'inline-block';
    span.style.width = width + 'px';
    span.style.height = height + 'px';
    span.style.position = 'relative';
    span.style.bottom = '-0.1em';

    if (toolDef.fillColor !== 'transparent') {
        span.style.backgroundColor = toolDef.fillColor;
    }

    if (toolDef.strokeColor !== 'transparent') {
        span.style.borderStyle = 'solid';
        span.style.borderWidth = borderWidth + 'px';
        span.style.borderColor = toolDef.strokeColor;
    }

    return span;
}
