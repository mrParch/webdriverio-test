import { When, Then } from 'cucumber';

import MainPage from '../pages/main.page.js';

When(/^I set "([^"]*)" to the task name input$/, value => {
    MainPage.workplace.addTaskNameInput.waitForDisplayed();
    MainPage.workplace.addTaskNameInput.setValue(value);
});

When(/^I click on the add task button$/, () => {
    MainPage.workplace.addTaskBtn.click();
});

When(/^I expect that task "([^"]*)" is added$/, title => {
    const task = MainPage.workplace.taskByTitle(title);
    expect(task.title).toBeVisible();
});

When(/^I click on the task "([^"]*)"$/, title => {
    MainPage.workplace.taskByTitle(title).click();
});

Then(/^I expect that the task details panel is appeared$/, () => {
    MainPage.details.root.waitForDisplayed();
    expect(MainPage.details.root).toBeVisible();
});

When(/^I click on the delete task button$/, () => {
    MainPage.details.bucketBtn.click();
});

When(/^I click on the confirm deletion button$/, () => {
    MainPage.details.confirmDeleteBtn.click();
});

When(/^I expect that task "([^"]*)" is deleted$/,  title => {
    const condition = MainPage.workplace.taskByTitle(title).isDisplayed();
    expect(condition).not.toEqual(true);
});
