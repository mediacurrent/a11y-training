@smoke @ci
Feature: Resource Content Type
  When I view resource pages
  As an anonymous user
  I should be able to view resource content and its fields

  Scenario: View Goodbye Tools Fields
    When I go to "resource/goodbye-tools-hello-solutions-ebook"
    Then I should see "Goodbye Tools. Hello Solutions eBook"
    And I should see "He had a front row seat in this market"
    And I should see an "img" element
    And I should see the link "eBook"
    And I should see the link "Tag 1"
    And I should see the link "Tag 2"