import Page from "./base.page";

class LoginPage extends Page {
    get loginInput() {
        return $(`input[name='loginfmt']`);
    }

    get passwordInput() {
        return $(`input[name='passwd']`);
    }

    get submitBtn() {
        return $(`input[type='submit']`);
    }
}

export default new LoginPage();
