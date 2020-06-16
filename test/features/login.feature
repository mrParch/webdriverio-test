Feature: Validate the Login functionality of the application

  @smoke
  Scenario: As a user, I want to have ability to log into the application
    When I log into the app
    Then I should see the app
