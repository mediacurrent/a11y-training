@smoke @ci
Feature: Article content type
  When I view article pages
  As an anonymous user
  I should be able to view article content and its fields

  Scenario: View test article page fields
    When I go to "article/minnesota-iso-market-notice-iso-new-resource-implementation-process-enhancement"
    Then I should see "Minnesota ISO Market Notice"
    And I should see "Curabitur imperdiet sapien libero"
    And I should see "The ISO has established technical"
    And I should see an "img" element
    And I should see the link "John Smith"
    And I should see the link "Tag 1"
    And I should see the link "Tag 2"
