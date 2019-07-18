@api @user @smoke @ci
Feature: User
  As a visitor I should be able to load the user page
  And log in as an "authenticated user" role

  Scenario: User page loads
    Given I am on "/user"
    Then I should see "Log in"

  Scenario: Create and log in as a user
    Given I am logged in as a user with the "authenticated user" role
    When I go to "user"
    Then I should see "Member for"