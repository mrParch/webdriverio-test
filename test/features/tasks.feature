Feature: Validate the task functionality of the application
  #TO DO: implement macroses instead of many known steps
  #TO DO: implement afterhooks to clean created data

  Background:
    Given I log into the app
    Then I should see the app

  @scenario1
  Scenario: As a user, I want to have ability to create task
    When I set "test1" to the task name input
    And I click on the add task button
    Then I expect that task "test1" is added
    # And I expect that the counter in Tasks section is increased by one

  @scenario2
  Scenario: As a user, I want to have ability to delete task
    When I set "test" to the task name input
    And I click on the add task button
    Then I expect that task "test" is added
    When I click on the task "test"
    Then I expect that the task details panel is appeared
    When I click on the delete task button
    And I click on the confirm deletion button
    Then I expect that task "test" is deleted
    # And I expect that the counter in Tasks section is decreased by one

#   @scenario3
#   Scenario: As a user, I want to have ability to mark task as completed
#     Given I log into the app
#     Then I should see the app
#     When I navigate to the Tasks section
#     And I set "test" to the task name input
#     And I click on the add task button
#     Then I expect that task is added
#     When I click on the mark as completed checkbox
#     Then I expect that the task is moved from tasks list to the Completed category

#   @scenario4
#   Scenario: As a user, I want to have ability to unmark task as completed
#     Given I log into the app
#     Then I should see the app
#     When I navigate to the Tasks section
#     And I set "test" to the task name input
#     And I click on the add task button
#     Then I expect that task is added
#     When I click on the mark as completed checkbox
#     Then I expect that the task is moved from tasks list to the Completed category
#     When I click on the mark as completed checkbox in Completed category
#     Then I expect that the task is moved from Completed category to tasks list

#   @scenario5
#   Scenario: As a user, I want to have ability to mark task as important
#     Given I log into the app
#     Then I should see the app
#     When I navigate to the Tasks section
#     And I set "test" to the task name input
#     And I click on the add task button
#     Then I expect that task is added
#     When I click on the mark task as important checkbox
#     Then I expect that the task is marked as important
#     When I navigate to the Important section
#     Then I expect that the task is appeared in Important section
#     And I expect that the counter in Important section is increased by one

#   @scenario6
#   Scenario: As a user, I want to have ability to unmark task as important
#     Given I log into the app
#     Then I should see the app
#     When I navigate to the Tasks section
#     And I set "test" to the task name input
#     And I click on the add task button
#     Then I expect that task is added
#     When I click on the mark task as important checkbox
#     Then I expect that the task is marked as important
#     When I navigate to the Important section
#     Then I expect that the task is appeared in Important section
#     And I expect that the counter in Important section is increased by one

#   @scenario7
#   Scenario: As a user, I want to have ability to mark completed task as important
#     Given I log into the app
#     Then I should see the app
#     When I navigate to the Tasks section
#     And I set "test" to the task name input
#     And I click on the add task button
#     Then I expect that task is added
#     When I click on the mark as completed checkbox
#     Then I expect that the task is moved from tasks list to the Completed category
#     When I click on the mark task as important checkbox
#     And I navigates to the Important section
#     Then I expect that the task is appeared in Important section
#     And I expect that the task is marked as completed in Important section
#     And I expect that the counter in Important section is not increased

#   @scenario8
#   Scenario: As a user, I want to have ability to open task details panel
#     Given I log into the app
#     Then I should see the app
#     When I navigate to the Tasks section
#     And I set "test" to the task name input
#     And I click on the add task button
#     Then I expect that task is added
#     When I click on the task
#     Then I expect that the task details panel is appeared

#   @scenario9
#   Scenario: As a user, I want to have ability to open task details panel
#     Given I log into the app
#     Then I should see the app
#     When I navigate to the Tasks section
#     And I set "test" to the task name input
#     And I click on the add task button
#     Then I expect that task is added
#     When I click on the task
#     Then I expect that the task details panel is appeared

#   @scenario10
#   Scenario: As a user, I want to have ability to add task to my day
#     Given I log into the app
#     Then I should see the app
#     When I navigate to the Tasks section
#     And I set "test" to the task name input
#     And I click on the add task button
#     Then I expect that task is added
#     When I click on the task
#     Then I expect that the task details panel is appeared
#     When I click on the Add to My Day button in details panel
#     And I navigate to the My Day section
#     Then I expect that the task is appeared in My Day section
#     And I expect that counter in My Day section is increased by one

#   @scenario11
#   Scenario: As a user, I want to have ability to remove task from My Day section
#     Given I log into the app
#     Then I should see the app
#     When I navigate to the Tasks section
#     And I set "test" to the task name input
#     And I click on the add task button
#     Then I expect that task is added
#     When I click on the task
#     Then I expect that the task details panel is appeared
#     When I click on the Add to My Day button in details panel
#     And I navigate to the My Day section
#     Then I expect that the task is appeared in My Day section
#     When I click on the task
#     Then I expect that the task details panel is appeared
#     When I click on the Remove from My Day cross button
#     Then I expect that the task is disappeared from the My Day section
#     And I expect that the counter in My Day section is decreased by one
