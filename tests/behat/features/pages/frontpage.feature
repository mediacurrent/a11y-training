@front @smoke @ci
Feature: 
  When I view the homepage
  As an anonymous user
  I should be able to view homepage content and its fields
  And I should see the Card List components render

  Scenario: Home page loads
    Given I am on the homepage
    Then I should see "Welcome"
    And I should see an "img" element
    And I should see "Lorem ipsum dolor sit amet"
    And I should see a "ul.card-list" element
    And I should see the link "Read more"