Feature: Google Login functionality

  Scenario: User signs-in to gmail account
    Given a user goes to Google
    When user inputs his username "testruby256@gmail.com" and password "test256ruby"
    Then should appear logout button

  Scenario: Test failed
    Given a user goes to Google
    And test failed

  Scenario Outline: User can't sign in using incorrect creds
    Given a user goes to Google
    When user inputs his username "<email>" and password "<password>"
    Then error message appears
    Examples:
      | email                 | password |
      | testruby256@gmail.com | sss      |
      | testruby257@gmail.com | ddd      |
