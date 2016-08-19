Feature: Google email sendings

  Scenario: Users can send emails
    Given a user goes to Google
    And user logins as "testruby256@gmail.com"
    When user sends an email to "testruby256@gmail.com"

