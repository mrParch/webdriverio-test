export class Task {
    constructor(root) {
        this.root = root;
    }

    get completeCheckbox() {
        return this.root.$('span.checkBox.big');
    }

    get importantCheckbox() {
        return this.root.$('span.importanceButton');
    }

    get title() {
        return this.root.$('span.taskItemInfo-title');
    }
}