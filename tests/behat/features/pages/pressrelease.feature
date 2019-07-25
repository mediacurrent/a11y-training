@smoke @ci
Feature: Press release content type
  When I view press release pages
  As an anonymous user
  I should be able to view press release content and its fields

  Scenario: View test press release page fields
    When I go to "press_release/schmidt-and-global-sign-watson-iot-partnership-new-industrial-era"
    Then I should see "Schmidt and Global Sign Watson IoT Partnership for New Industrial Era"
    And I should see "Schmidt manufactures millions"
    And I should see an "img" element
    And I should see the link "John Smith"
    And I should see the link "Tag 1"
    And I should see the link "Tag 2"