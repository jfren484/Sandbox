const toolConfig = {
    line: {
        text: '<span style="font-size: 2em;">&#9660;</span>',
        textStyle: { colorProperty: 'color', colorValueType: 'drawParam', colorValue: 'strokeColor' },
        formFields: ['lineWidth', 'strokeColor'],
        staticValues: [{ name: 'compOp', value: 'source-over' }, { name: 'dragTest', value: 'stroke' }],
        dynamicValues: [],
        clickEventHandler: handleDrawButtonClick,
        isDrawingTool: true,
        buttonClass: 'drawButton'
    },
    circ: {
        text: determineCircleText,
        textStyle: {},
        formFields: ['diameter', 'fillColor', 'strokeColor', 'strokeWidth'],
        staticValues: [{ name: 'compOp', value: 'source-over' }],
        dynamicValues: [{ source: determineDragTest, dest: 'dragTest' }],
        clickEventHandler: handleDrawButtonClick,
        isDrawingTool: true,
        buttonClass: 'drawButton'
    },
    rect: {
        text: determineRectangleText,
        textStyle: {},
        formFields: ['width', 'height', 'fillColor', 'strokeColor', 'strokeWidth'],
        staticValues: [{ name: 'compOp', value: 'source-over' }],
        dynamicValues: [{ source: determineDragTest, dest: 'dragTest' }],
        clickEventHandler: handleDrawButtonClick,
        isDrawingTool: true,
        buttonClass: 'drawButton'
    },
    text: {
        text: 'field',
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
        textField: 'currentValue',
        textStyle: { colorProperty: 'color', colorValueType: 'static', colorValue: 'black', size: '1.25em' },
        formFields: ['faceCount'],
        staticValues: [],
        dynamicValues: [{ type: 'copy', source: 'faceCount', dest: 'currentValue' }],
        clickEventHandler: handleRngButtonClick,
        buttonClass: 'rngButton'
    }
};

function determineDragTest(toolDef) {
    return toolDef.fillColor === 'transparent' ? 'stroke' : 'fill';
}

function determineCircleTextx(toolDef) {
    return '<span style="font-size: 2.5em; position: relative; bottom: 0.1em;">' + (toolDef.fillColor === 'transparent' ? '&#9675;' : '&#9679;') + '</span>';
}

function determineCircleText(toolDef) {
    const strokeAdjust = toolDef.strokeColor === 'transparent' ? 0 : toolDef.strokeWidth * 2,
        fullDiameter = toolDef.diameter + strokeAdjust,
        scale = 30.0 / fullDiameter,
        diameter = parseFloat((toolDef.diameter * scale).toFixed(4)),
        borderWidth = parseFloat((toolDef.strokeWidth * scale).toFixed(4));

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
    const strokeAdjust = toolDef.strokeColor === 'transparent' ? 0 : toolDef.strokeWidth * 2,
        fullWidth = toolDef.width + strokeAdjust,
        fullHeight = toolDef.height + strokeAdjust,
        scale = Math.min(38.0 / fullWidth, 30.0 / fullHeight),
        width = parseFloat((toolDef.width * scale).toFixed(4)),
        height = parseFloat((toolDef.height * scale).toFixed(4)),
        borderWidth = parseFloat((toolDef.strokeWidth * scale).toFixed(4));

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
