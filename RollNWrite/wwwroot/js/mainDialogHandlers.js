function mainDialogHandleCustomToolButtonClick(event) {
    const index = Array.from(dialogToolsList.children).indexOf(event.target);
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
