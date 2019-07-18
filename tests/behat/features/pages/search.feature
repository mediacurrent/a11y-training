@smoke @ci
Feature: Search Page
  When I view the search results
  As an anonymous user
  I should be able to search teaser content

  Scenario: View Search teasers for "test" keyword
    When I go to "search/test"
    Then I should see a "article.node--view-mode-teaser" element