@smoke @ci
Feature: Sitemap.xml
  When I hit /sitemap.xml
  Then I should get a "200" HTTP response

  Scenario: View sitemap.xml
    When I go to "/sitemap.xml"
    Then I should get a "200" HTTP response