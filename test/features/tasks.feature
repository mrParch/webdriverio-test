Feature: Validate the task functionality of the application
  #TO DO: think about preconditions against a lot of known steps

  @smoke1
  Scenario: As a user, I want to have ability to create task
    Given I log into the app
    Then I should see the app
    When I navigate to the Tasks section
    And I set "test" to the task name input
    And I click on the add task button
    Then I expect that task is added
    And I expect that the counter in Tasks section is increased by one

  @smoke2
  Scenario: As a user, I want to have ability to delete task
    Given I log into the app
    Then I should see the app
    When I navigate to the Tasks section
    And I set "test" to the task name input
    And I click on the add task button
    Then I expect that task is added
    When I click on the delete task button
    And I confirm deletion
    Then I expect that task is deleted
    And I expect that the counter in Tasks section is decreased by one

  @smoke3
  Scenario: As a user, I want to have ability to mark task as completed
    Given I log into the app
    Then I should see the app
    When I navigate to the Tasks section
    And I set "test" to the task name input
    And I click on the add task button
    Then I expect that task is added
    When I click on the mark as completed checkbox
    Then I expect that the task is moved from tasks list to the Completed category

  @smoke4
  Scenario: As a user, I want to have ability to unmark task as completed
    Given I log into the app
    Then I should see the app
    When I navigate to the Tasks section
    And I set "test" to the task name input
    And I click on the add task button
    Then I expect that task is added
    When I click on the mark as completed checkbox
    Then I expect that the task is moved from tasks list to the Completed category
    When I click on the mark as completed checkbox in Completed category
    Then I expect that the task is moved from Completed category to tasks list

  @smoke5
  Scenario: As a user, I want to have ability to mark task as important
    Given I log into the app
    Then I should see the app
    When I navigate to the Tasks section
    And I set "test" to the task name input
    And I click on the add task button
    Then I expect that task is added
    When I click on the mark task as important checkbox
    Then I expect that the task is marked as important
    When I navigate to the Important section
    Then I expect that the task is appeared in Important section
    And I expect that the counter in Important section is increased by one

  @smoke6
  Scenario: As a user, I want to have ability to unmark task as important
    Given I log into the app
    Then I should see the app
    When I navigate to the Tasks section
    And I set "test" to the task name input
    And I click on the add task button
    Then I expect that task is added
    When I click on the mark task as important checkbox
    Then I expect that the task is marked as important
    When I navigate to the Important section
    Then I expect that the task is appeared in Important section
    And I expect that the counter in Important section is increased by one

  @smoke7
  Scenario: As a user, I want to have ability to mark completed task as important
    Given I log into the app
    Then I should see the app
    When I navigate to the Tasks section
    And I set "test" to the task name input
    And I click on the add task button
    Then I expect that task is added
    When I click on the mark as completed checkbox
    Then I expect that the task is moved from tasks list to the Completed category
    When I click on the mark task as important checkbox
    And I navigates to the Important section
    Then I expect that the task is appeared in Important section
    And I expect that the task is marked as completed in Important section
    And I expect that the counter in Important section is not increased

  @smoke8
  Scenario: As a user, I want to have ability to open task details panel
    Given I log into the app
    Then I should see the app
    When I navigate to the Tasks section
    And I set "test" to the task name input
    And I click on the add task button
    Then I expect that task is added
    When I click on the task
    Then I expect that the task details panel is appeared

  @smoke9
  Scenario: As a user, I want to have ability to open task details panel
    Given I log into the app
    Then I should see the app
    When I navigate to the Tasks section
    And I set "test" to the task name input
    And I click on the add task button
    Then I expect that task is added
    When I click on the task
    Then I expect that the task details panel is appeared

  @smoke10
  Scenario: As a user, I want to have ability to add task to my day
    Given I log into the app
    Then I should see the app
    When I navigate to the Tasks section
    And I set "test" to the task name input
    And I click on the add task button
    Then I expect that task is added
    When I click on the task
    Then I expect that the task details panel is appeared
    When I click on the Add to My Day button in details panel
    And I navigate to the My Day section
    Then I expect that the task is appeared in My Day section
    And I expect that counter in My Day section is increased by one

  @smoke11
  Scenario: As a user, I want to have ability to remove task from My Day section
    Given I log into the app
    Then I should see the app
    When I navigate to the Tasks section
    And I set "test" to the task name input
    And I click on the add task button
    Then I expect that task is added
    When I click on the task
    Then I expect that the task details panel is appeared
    When I click on the Add to My Day button in details panel
    And I navigate to the My Day section
    Then I expect that the task is appeared in My Day section
    When I click on the task
    Then I expect that the task details panel is appeared
    When I click on the Remove from My Day cross button
    Then I expect that the task is disappeared from the My Day section
    And I expect that the counter in My Day section is decreased by one

    