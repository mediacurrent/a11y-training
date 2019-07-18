@smoke @ci
Feature: Blog Content Type
  When I view blog pages
  As an anonymous user
  I should be able to view blog content and its fields

  Scenario: View How To Connect Innovations Blog Fields
    When I go to "blog/how-connect-innovations-support-new-retail-experience"
    Then I should see "How To Connect Innovations"
    And I should see "Curabitur imperdiet sapien libero"
    And I should see "Recent data from the U.S. Census Bureau"
    And I should see an "img" element
    And I should see the link "John Smith"
    And I should see the link "Tag 1"
    And I should see the link "Tag 2"
