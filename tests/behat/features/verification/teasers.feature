@smoke @ci
Feature: Teaser displays

  Scenario Outline: As an anonymous user I see a teaser display for all content types
    When I visit <path>
    Then I should see a "article.node--view-mode-teaser" element

    Examples: 
      | path                          |
      | '/test-teasers/article'       |
      | '/test-teasers/page'          |
      | '/test-teasers/blog'          |
      | '/test-teasers/event'         |
      | '/test-teasers/homepage'      |
      | '/test-teasers/landing'       |
      | '/test-teasers/press_release' |
      | '/test-teasers/product'       |
      | '/test-teasers/profile'       |
      | '/test-teasers/resource'      |
      | '/test-teasers/webform'       |
