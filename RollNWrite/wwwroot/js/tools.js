class Tool {
    textStyle = {};
    formFields = [];
    staticValues = [];
    dynamicValues = [];
    isDrawingTool = false;
    buttonClass = '';

    constructor(btn) {
        this.btn = btn;
    }

    getText() { throw new Error('getText not defined'); }
    getAltText() { throw new Error('getAltText not defined'); }
}

class DrawTool extends Tool {
    isDrawingTool = true;
    buttonClass = 'drawButton';

    constructor(btn, toolConfig) {
        super(btn);

        this.btn.addEventListener('click', this.handleClick, false);
        this.currentToolConfig = toolConfig;
    }

    handleClick(event) {
        const btn = event.currentTarget;

        // Defaults for all of the detail properties
        let toolIndex = parseInt(btn.getAttribute(dataAttrToolIndex)),
            toolLock = false,
            toolReset = false,
            toolClass = '';

        if (btn.classList.contains('lock')) {
            toolIndex = -1;
            toolReset = true;
        } else if (btn.classList.contains('active')) {
            toolLockOn = true;
            toolClass = 'lock';
        } else {
            toolReset = true;
            toolClass = 'active';
        }

        this.dispatchEvent(
            new CustomEvent('toolChange', {
                detail: {
                    toolIndex: toolIndex,
                    toolLock: toolLock,
                    toolReset: toolReset,
                    toolClass: toolClass
                },
            }),
        );
    }
}

class LineTool extends DrawTool {
    textStyle = { colorProperty: 'color', colorValueType: 'drawParam', colorValue: 'strokeColor', size: '1.6em' };
    formFields = ['lineWidth', 'strokeColor'];
    staticValues = [{ name: 'compOp', value: 'source-over' }, { name: 'dragTest', value: 'stroke' }];

    constructor(toolConfig) {
        super(toolConfig);
    }

    getText() {
        const span = document.createElement('span');
        span.style.display = 'inline-block';
        span.style.position = 'relative';
        span.style.bottom = '0.08em';
        span.innerHTML = '&#9998;';

        return [span];
    }

    getAltText() {
        return `draw ${this.lineWidth}px ${this.strokeColor} line`;
    }
}

class EraseTool extends DrawTool {
    textStyle = { colorProperty: 'color', colorValueType: 'static', colorValue: 'pink' };
    formFields = ['lineWidth'];
    staticValues = [{ name: 'compOp', value: 'destination-out' }, { name: 'dragTest', value: 'stroke' }];

    constructor(toolConfig) {
        super(toolConfig);
    }

    getText() {
        const span = document.createElement('span');
        span.style.fontSize = '2em';
        span.innerHTML = '&#9648;';

        return [span];
    }

    getAltText() {
        return `erase ${this.lineWidth}px line`;
    }
}

class ShapeTool extends DrawTool {
    formFields = ['fillColor', 'strokeColor', 'lineWidth'];
    staticValues = [{ name: 'compOp', value: 'source-over' }];
    dynamicValues = [{ source: getDragTest, dest: 'dragTest' }];

    constructor(toolConfig) {
        super(toolConfig);
    }

    getDragTest() {
        return this.fillColor === 'transparent' ? 'stroke' : 'fill';
    }

    getStrokeDesc() {
        return this.strokeColor === 'transparent'
            ? ''
            : ', ' + this.lineWidth + 'px ' + this.strokeColor + ' stroke';
    }

    getFillDesc() {
        return this.fillColor === 'transparent'
            ? ''
            : ', ' + this.fillColor + ' fill';
    }

    getText(setWidth, setHeight) {
        const strokeAdjust = this.strokeColor === 'transparent' ? 0 : this.lineWidth * 2,
            fullWidth = setWidth + strokeAdjust,
            fullHeight = setHeight + strokeAdjust,
            scale = Math.min(38.0 / fullWidth, 30.0 / fullHeight),
            scaledWidth = parseFloat((setWidth * scale).toFixed(4)),
            scaledHeight = parseFloat((setHeight * scale).toFixed(4)),
            borderWidth = parseFloat((this.lineWidth * scale).toFixed(4));

        const span = document.createElement('span');
        span.style.display = 'inline-block';
        span.style.width = scaledWidth + 'px';
        span.style.height = scaledHeight + 'px';
        span.style.position = 'relative';
        span.style.bottom = '-0.1em';

        if (this.fillColor !== 'transparent') {
            span.style.backgroundColor = this.fillColor;
        }

        if (this.strokeColor !== 'transparent') {
            span.style.borderStyle = 'solid';
            span.style.borderWidth = borderWidth;
            span.style.borderColor = this.strokeColor;
        }

        return span;
    }
}

class CircleTool extends ShapeTool {
    constructor(toolConfig) {
        super(toolConfig);

        this.dynamicValues.unshift('diameter');
    }

    getText() {
        const span = super.getText(this.diameter, this.diameter);
        span.style.borderRadius = '50%';

        return [span];
    }

    getAltText() {
        return `draw ${this.diameter}px diameter circle${this.getStrokeDesc()}${this.getFillDesc()}`;
    }
}

class RectangleTool extends ShapeTool {
    constructor(toolConfig) {
        super(toolConfig);

        this.dynamicValues.unshift('width', 'height');
    }

    getText() {
        const span = super.getText(this.width, this.height);

        return [span];
    }

    getAltText() {
        return `draw ${this.width}px x ${this.height}px rectangle${this.getStrokeDesc()}${this.getFillDesc()}`;
    }
}

class TextTool extends DrawTool {
    textStyle = { colorProperty: 'color', colorValueType: 'drawParam', colorValue: 'fillColor', size: '1.25em' };
    formFields = ['fontSize', 'isBold', 'fillColor'];
    staticValues = [{ name: 'compOp', value: 'source-over' }, { name: 'dragTest', value: 'fill' }];

    constructor(toolConfig) {
        super(toolConfig);
    }
}

class StaticTextTool extends TextTool {
    constructor(toolConfig) {
        super(toolConfig);

        this.dynamicValues.unshift('textValue');
    }

    getText() {
        return [this.textValue];
    }

    getAltText() {
        return `draw ${this.textValue}`;
    }
}

class DynamicTextTool extends TextTool {
    constructor(toolConfig) {
        super(toolConfig);
    }

    getText() {
        return ['[ T ]'];
    }

    getAltText() {
        return `draw specified text`;
    }
}

class RngTool extends Tool {
    textStyle = { colorProperty: 'color', colorValueType: 'static', colorValue: 'black', size: '1.25em' };
    formFields = ['faceCount', 'fontColor', 'fillColor', 'strokeColor', 'lineWidth'];
    dynamicValues = [{ type: 'copy', source: 'faceCount', dest: 'currentValue' }];
    buttonClass = 'rngButton';

    constructor() {
        super();
    }

    getText() {
        const spanType = document.createElement('span');
        spanType.classList.add('rngType');
        spanType.innerHTML = 'd' + this.faceCount;

        const spanValue = document.createElement('span');
        spanValue.classList.add('rngValue');
        spanValue.innerHTML = this.faceCount;

        return [spanType, spanValue];
    }

    getAltText() {
        return `roll ${this.faceCount}-sided die`;
    }

    handleClick(event) {
        if (event.target.tagName.toLowerCase() === 'span' && event.target.classList.contains('rngType')) return;

        const btn = event.currentTarget;
        randomize(btn);
    }
}

class RollAllTool extends Tool {
    textStyle = { colorProperty: 'color', colorValueType: 'static', colorValue: 'black', size: '1.75em' };
    buttonClass = 'rollButton';

    constructor() {
        super();
    }

    getText() {
        return ['&#10227;'];
    }

    getAltText() {
        return 'Reroll all dice';
    }

    handleClick(event) {
        toolbar.querySelectorAll('.rngButton').forEach(btn => {
            randomize(btn);
        });
    }
}
