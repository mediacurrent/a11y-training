@smoke @ci
Feature: Profile Content Type
  When I view profile pages
  As an anonymous user
  I should be able to view profile content and its fields

  Scenario: View Laura Profile Page Fields
    When I go to "profile/laura-martin"
    Then I should see "Laura Martin"
    And I should see "Lorem ipsum dolor sit amet"
    And I should see an "img" element