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

    Array.from(dialogToolDefinitionForm).forEach(el => {
        el.addEventListener('change', mainDialogHandlInputChange, false);
    });
}

function mainDialogLoad() {
    toolEditChanged = false;
    tempBGImageData = gameData.bgImageData;
    tempToolbarButtons = structuredClone(gameData.toolbarButtons);

    tempBGImage.src = tempBGImageData ? tempBGImageData : defTempBGImageSrc;
    resetDialogToolList();

    resetToolEdit();
    mainDialogToggleModalSections();

    modalDialog.classList.add('visible');
}

/* Event Handlers */

function mainDialogHandleCustomToolButtonClick(event) {
    editingToolIndex = Array.from(dialogToolsList.children).indexOf(this);
    tempToolbarDefType = tempToolbarButtons[editingToolIndex].type;

    setupToolEdit(tempToolbarButtons[editingToolIndex]);
    mainDialogToggleModalSections(resetToolIndex = false);
}

function mainDialogHandleCancelClick(event) {
    modalDialog.classList.remove('visible');
}

function mainDialogHandleSaveClick(event) {
    modalDialog.classList.remove('visible');

    if (JSON.stringify(tempToolbarButtons) != JSON.stringify(gameData.toolbarButtons)) {
        gameDataChanged = true;
        gameData.toolbarButtons = tempToolbarButtons;
        resetToolbarCustomButtons();
    }

    if (tempBGImageData != gameData.bgImageData) {
        gameDataChanged = true;
        gameData.bgImageData = tempBGImageData;
        loadBGImage();
    }
}

function mainDialogHandlInputChange(event) {
    toolEditChanged = true;
    mainDialogToggleModalSections(resetToolIndex = false, resetFormChanges = false);
}

function mainDialogHandleToolTypeChange(event) {
    tempToolbarDefType = document.getElementById('dialogToolType').value;
    activateToolEditType(tempToolbarButtons[editingToolIndex]);
}

function mainDialogHandleToolAddClick(event) {
    editingToolIndex = dialogToolsList.children.length;
    tempToolbarDefType = '';

    setupToolEdit();
    mainDialogToggleModalSections(resetToolIndex = false);
}

function mainDialogHandleToolCancelClick(event) {
    resetToolEdit();
    mainDialogToggleModalSections();
}

function mainDialogHandleToolSaveClick(event) {
    const toolDef = saveToolEdit();
    tempToolbarButtons[editingToolIndex] = toolDef;

    resetToolEdit();
    resetDialogToolList();
    mainDialogToggleModalSections();
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

    resetToolEdit();
    resetDialogToolList();
    mainDialogToggleModalSections();
}

/* functions called by above handlers */

function mainDialogToggleModalSections(resetToolIndex = true, resetFormChanges = true) {
    if (resetToolIndex) editingToolIndex = -1;
    if (resetFormChanges) toolEditChanged = false;

    document.querySelectorAll('.modalSectionTool').forEach(el => {
        if (editingToolIndex < 0) {
            el.classList.add('visible');
        } else {
            el.classList.remove('visible');
        }
    });

    document.querySelectorAll('.hideOnFormChanges').forEach(el => {
        if (toolEditChanged) {
            el.classList.add('visible');
        } else {
            el.classList.remove('visible');
        }
    });
}

function resetDialogToolList() {
    resetCustomButtonListControls(dialogToolsList, tempToolbarButtons, (cfg) => mainDialogHandleCustomToolButtonClick);
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
        toolDef[field.dest] = typeof field.source === 'function'
            ? field.source(toolDef)
            : toolDef[field.source];
    });

    return toolDef;
}
