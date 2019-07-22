@smoke @ci
Feature: Meta tag
  When I view the homepage
  As an anonymous user
  I should be able to a validate title Meta tag

  Scenario: View How To Connect Innovations Blog Fields
    Given I am on the homepage
    And I should see an "title" element
    Then the "title" element should contain "Welcome"