import Page from './base.page';

class StartPage extends Page {
    get startBtn() {
        return $('a#actionButton');
    }
}

export default new StartPage();
