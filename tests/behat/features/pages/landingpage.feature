@smoke @ci
Feature: Landing Page Content Type
  When I view landing pages
  As an anonymous user
  I should be able to view landing page content and its fields
  And I should see the Recent Content By Type view

  Scenario: View Products Landing Page Fields
    When I go to "landing/products"
    Then I should see "Products"
    And I should see "Lorem ipsum dolor sit amet"
    And I should see an "img" element
    And I should see a "div.view-recent-content-by-type" element
    And I should see the link "Echo Show"