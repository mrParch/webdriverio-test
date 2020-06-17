import { Task } from './task.component.js';

export class Workplace {
    constructor(root) {
        this.root = root;
    }

    get listTitle() {
        return $('h2.listTitle');
    }

    get container() {
        return $('div.main-background');
    }

    get addTaskNameInput() {
        return this.container.$('input#baseAddInput-addTask');
    }

    get addTaskIcon() {
        return this.container.$('button.baseAdd-icon');
    }

    get addTaskBtn() {
        return this.container.$('button.baseAdd-button');
    }

    taskByTitle(title) {
        return new Task($(`//span[@class='taskItem-title']//span[contains(text(), '${title}')]//ancestor::div[@class='taskItem-body']`));
    }

}