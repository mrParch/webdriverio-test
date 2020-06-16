Feature: Validate the task functionality of the application

  @smoke
  Scenario: As a user, I want to have ability to create task
    Given I log into the app
    Then I should see the app
    When I navigate to the Tasks section
    And I set "test" to the task name input
    And I click on the add task button
    Then I expect that task is added

  @smoke
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

  @smoke
  Scenario: As a user, I want to have ability to mark task as completed
    Given I log into the app
    Then I should see the app
    When I navigate to the Tasks section
    And I set "test" to the task name input
    And I click on the add task button
    Then I expect that task is added
    When I click on the mark as completed checkbox
    Then I expect that the task is moved from tasks list to the Completed category

  @smoke
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

  @smoke
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

  @smoke
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
