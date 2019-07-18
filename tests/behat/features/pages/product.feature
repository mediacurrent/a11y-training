@smoke @ci
Feature: Product Content Type
  When I view product pages
  As an anonymous user
  I should be able to view product content and its fields
  And I should see the Related Products view

  Scenario: View Echo Show Product Page Fields
    When I go to "product/echo-show"
    Then I should see "Echo Show"
    And I should see "Echo Show brings you everything you love about Alexa"
    And I should see "Related Products"
    And I should see an "img" element
    And I should see a "article.node--view-mode-teaser" element
    And I should see the link "Request quote"