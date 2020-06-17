import { Given, Then } from 'cucumber';

import StartPage from '../pages/start.page.js';
import LoginPage from '../pages/login.page.js';
import MainPage from '../pages/main.page.js';

//TO DO: move secrets to .env
Given(/^I log into the app$/, () => {
    browser.url('https://todo.microsoft.com/tasks/');
    StartPage.startBtn.click();
    LoginPage.loginInput.setValue('autouser_todo@outlook.com');
    LoginPage.submitBtn.click();
    LoginPage.submitBtn.waitForDisplayed();
    LoginPage.passwordInput.setValue('1BJGckr46Y1zHLeuztX9');
    LoginPage.submitBtn.click();
});

Then(/^I should see the app$/, () => {
    MainPage.header.waitForDisplayed();
    expect(MainPage.header).toBeVisible();
});
