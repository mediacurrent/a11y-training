@smoke @ci
Feature: Event Content Type
  When I view event pages
  As an anonymous user
  I should be able to view event content and its fields

  Scenario: View Innovate 2018 Event Page Fields
    When I go to "event/innovate-2018"
    Then I should see "Innovate 2018"
    And I should see "The event where the problems of tomorrow"
    And I should see an "img" element
    And I should see the link "http://www.google.com/"
