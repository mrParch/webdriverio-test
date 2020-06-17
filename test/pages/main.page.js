import Page from './base.page.js';
import { Sidebar } from './sidebar.component.js';
import { Workplace } from './workplace.component.js';
import { Details } from './details.component.js';

class MainPage extends Page {
    get header() {
        return $('div#toDoSearchBox_container');
    }

    get sidebar() {
        return new Sidebar($('div.sidebar'));
    }

    get workplace() {
        return new Workplace($('div#main'));
    }

    get details() {
        return new Details($('div.details'));
    }
}

export default new MainPage();
