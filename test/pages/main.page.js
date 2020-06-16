import Page from './base.page.js';
import { Sidebar } from './sidebar.component.js';

class MainPage extends Page {
    get header() {
        return $('div#toDoSearchBox_container');
    }

    get sidebar() {
        return new Sidebar();
    }
}

export default new MainPage();
