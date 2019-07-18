@smoke @ci
Feature: Webform Content Type
  When I view webform pages
  As an anonymous user
  I should be able to view webform content and its fields

  Scenario: View Contact Us Fields
    When I go to "form/contact-us"
    Then I should see "Contact Us"
    And I should see "Got a question about GlobalTech"
    And I should see an "form.webform-submission-form" element
    And I should see an "input.form-text" element
    And I should see an "img" element