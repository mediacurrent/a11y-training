@api @smoke @ci
Feature: Cache
  When I clear cache
  Then I should get a "200" HTTP response

  Scenario: Clear cache
    Given the cache has been cleared
    When I am on the homepage
    Then I should get a "200" HTTP response