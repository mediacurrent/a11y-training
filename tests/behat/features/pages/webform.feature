@smoke @ci
Feature: Webform content type
  When I view webform pages
  As an anonymous user
  I should be able to view webform content and its fields

  Scenario: View test webform page fields
    When I go to "form/contact-us"
    Then I should see "Contact Us"
    And I should see "Got a question about GlobalTech"
    And I should see an "form.webform-submission-form" element
    And I should see an "input.form-text" element
    And I should see an "img" element