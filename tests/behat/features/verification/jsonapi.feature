@smoke @ci
Feature: JSON API page renders
  When I hit /jsonapi
  Then I should get a "200" HTTP response

  Scenario: JSON API
    When I go to "/jsonapi"
    Then I should get a "200" HTTP response