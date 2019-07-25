@api @smoke @ci
Feature: Clear cache
  When I clear cache
  Then I should get a "200" HTTP response

  Scenario: Clear cache
    Given the cache has been cleared
    When I am on the homepage
    Then I should get a "200" HTTP response