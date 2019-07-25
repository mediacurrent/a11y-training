@smoke @ci
Feature: Search page results
  When I view the search results
  As an anonymous user
  I should be able to search teaser content

  Scenario: View sample search results with "Teaser" display configured
    When I go to "search/test"
    Then I should see a "article.node--view-mode-teaser" element