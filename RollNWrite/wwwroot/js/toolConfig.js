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
        text: '<span style="font-size: 2.5em; position: relative; bottom: 0.1em;">&#9679;</span>',
        textStyle: { colorProperty: 'color', colorValueType: 'drawParam', colorValue: 'fillColor' },
        formFields: ['diameter', 'fillColor', 'strokeColor'],
        staticValues: [{ name: 'compOp', value: 'source-over' }],
        dynamicValues: [{ type: 'func', dest: 'dragTest' }],
        clickEventHandler: handleDrawButtonClick,
        isDrawingTool: true,
        buttonClass: 'drawButton'
    },
    rect: {
        text: '<span style="font-size: 2.5em; position: relative; bottom: 0.1em;">&#9646;</span>',
        textStyle: { colorProperty: 'color', colorValueType: 'drawParam', colorValue: 'fillColor' },
        formFields: ['width', 'height', 'fillColor', 'strokeColor'],
        staticValues: [{ name: 'compOp', value: 'source-over' }],
        dynamicValues: [{ type: 'func', dest: 'dragTest' }],
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