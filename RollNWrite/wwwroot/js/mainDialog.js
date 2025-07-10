function initializeMainDialogHandlers() {
    document.getElementById('btnDialogCancel').addEventListener('click', mainDialogHandleCancelClick, false);
    document.getElementById('btnDialogSave').addEventListener('click', mainDialogHandleSaveClick, false);
    document.getElementById('dialogToolType').addEventListener('change', mainDialogHandleToolTypeChange, false);
    document.getElementById('btnDialogToolAdd').addEventListener('click', mainDialogHandleToolAddClick, false);
    document.getElementById('btnDialogToolCancel').addEventListener('click', mainDialogHandleToolCancelClick, false);
    document.getElementById('btnDialogToolSave').addEventListener('click', mainDialogHandleToolSaveClick, false);
    dialogToolMoveUpButton.addEventListener('click', mainDialogHandleToolMoveUpClick, false);
    dialogToolMoveDownButton.addEventListener('click', mainDialogHandleToolMoveDownClick, false);
    dialogToolDeleteButton.addEventListener('click', mainDialogHandleToolDeleteClick, false);
}

function mainDialogHandleCustomToolButtonClick(event) {
    const index = Array.from(dialogToolsList.children).indexOf(this);
    editingToolIndex = index;
    tempToolbarDefType = tempToolbarButtons[editingToolIndex].type;

    setupToolEdit(tempToolbarButtons[editingToolIndex]);
    toggleDialogModalSections();
}

function mainDialogHandleCancelClick(event) {
    modalDialog.classList.remove('visible');
}

function mainDialogHandleSaveClick(event) {
    modalDialog.classList.remove('visible');
    gameData.toolbarButtons = tempToolbarButtons;
    resetToolbarCustomButtons();

    gameData.bgImageData = tempBGImageData;
    loadBGImage();
}

function mainDialogHandleToolTypeChange(event) {
    tempToolbarDefType = document.getElementById('dialogToolType').value;
    activateToolEditType(tempToolbarButtons[editingToolIndex]);
}

function mainDialogHandleToolAddClick(event) {
    const index = dialogToolsList.children.length;
    editingToolIndex = index;
    tempToolbarDefType = '';

    setupToolEdit();
    toggleDialogModalSections();
}

function mainDialogHandleToolCancelClick(event) {
    editingToolIndex = -1;
    resetToolEdit();
    toggleDialogModalSections();
}

function mainDialogHandleToolSaveClick(event) {
    const toolDef = saveToolEdit();
    tempToolbarButtons[editingToolIndex] = toolDef;

    editingToolIndex = -1;
    resetToolEdit();
    resetDialogToolList();
    toggleDialogModalSections();
}

function mainDialogHandleToolMoveUpClick(event) {
    const currItem = tempToolbarButtons[editingToolIndex];
    tempToolbarButtons.splice(editingToolIndex, 1);
    editingToolIndex--;
    tempToolbarButtons.splice(editingToolIndex, 0, currItem);
    resetDialogToolList();
    resetDialogToolMoveButtons();
}

function mainDialogHandleToolMoveDownClick(event) {
    const currItem = tempToolbarButtons[editingToolIndex];
    tempToolbarButtons.splice(editingToolIndex, 1);
    editingToolIndex++;
    tempToolbarButtons.splice(editingToolIndex, 0, currItem);
    resetDialogToolList();
    resetDialogToolMoveButtons();
}

function mainDialogHandleToolDeleteClick(event) {
    tempToolbarButtons.splice(editingToolIndex, 1);

    editingToolIndex = -1;
    resetToolEdit();
    resetDialogToolList();
    toggleDialogModalSections();
}

/* functions called by above handlers */

function resetDialogToolList() {
    dialogToolsList.innerHTML = '';
    tempToolbarButtons.forEach((btnData, index) => {
        const cfg = toolConfig[btnData.type];
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

        toolConfig[tempToolbarDefType].formFields.forEach(field => {
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

    toolConfig[tempToolbarDefType].formFields.forEach(field => {
        const input = toolContainer.querySelector('[name="' + field + '"]');
        const val = input.type === 'checkbox'
            ? input.checked
            : input.type === 'number'
                ? parseFloat(input.value)
                : input.value;

        toolDef[field] = val;
    });

    toolConfig[tempToolbarDefType].staticValues.forEach(field => {
        toolDef[field.name] = field.value;
    });

    toolConfig[tempToolbarDefType].dynamicValues.forEach(field => {
        switch (field.type) {
            case 'copy':
                toolDef[field.dest] = toolDef[field.source];
                break;
            case 'func':
                // TODO: make func generic and store in tool config
                toolDef[field.dest] = toolDef['fillColor'] === 'transparent' ? 'stroke' : 'fill';
                break;
        }
    });

    return toolDef;
}
