@smoke @ci
Feature: JSON API page
  When I hit /jsonapi
  Then I should get a "200" HTTP response

  Scenario: View JSON API page
    When I go to "/jsonapi"
    Then I should get a "200" HTTP response