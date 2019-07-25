@smoke @ci
Feature: Page content type
  When I view basic pages
  As an anonymous user
  I should be able to view basic page content and its fields

  Scenario: View test page fields
    When I go to "page/about-us"
    Then I should see "About Us"
    And I should see "Mission Statement"
    And I should see "At Global Tech we provide software-defined"
    And I should see an "img" element