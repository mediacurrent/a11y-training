@smoke @ci
Feature: Redirect
  When I visit a redirect
  As an anonymous user
  I should be redirected to the correct page

  Scenario: View sample redirect to article page
    When I go to "test-redirect"
    Then I should see "Paragraphs Test Page (JSON API)"
