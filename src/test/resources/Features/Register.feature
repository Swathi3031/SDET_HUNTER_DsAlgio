Feature: Register Page

  # ------------------ REGISTER PAGE VALIDATION ------------------

  Scenario: Verify Register page elements
    Given User is on the Register page
    When User views the Register page
    Then Username, Password, Confirm Password fields and Register button should be visible

  Scenario: Verify user able to click Register button
    Given User is on Register page
    When user clicks Register button
    Then Register button should be clickable

  Scenario: Verify user able to navigate to Login page
    Given User is on Register page
    When User clicks login button
    Then User should be navigated to Login page

  # ------------------ POSITIVE SCENARIO ------------------

  Scenario: Verify user able to register successfully
    Given User is on Register page
    When User enters valid username, password and confirm password and clicks Register
    Then New account created successfully

  # ------------------ EMPTY FIELD VALIDATIONS ------------------

  Scenario Outline: Verify registration with empty fields
  Given User is on Register page
  When User enters "<username>" "<password>" "<confirmPassword>" and clicks Register
  Then please fill out thius field error message should be displayed

  Examples:
    | username | password | confirmPassword |
    |          | pass123  | pass123         |
    | user123  |          | pass123         |
    | user123  | pass123  |                 |
    |          |          |                 |

 #Examples:
      #| action                                                         |
      #| User leaves username blank and clicks Register                |
      #| User leaves password blank and clicks Register                |
      #| User leaves confirm password blank and clicks Register        |
      #| User leaves all fields blank and clicks Register              |

  # ------------------ INVALID INPUT VALIDATIONS ------------------
Scenario Outline: Verify invalid registration scenarios
  Given User is on Register page
  When User enters "<username>" "<password>" "<confirmPassword>" and clicks Register
  Then Password mismatch error message should be displayed

  Examples:
    | username | password | confirmPassword |
    | validUser | pass123  | pass456         |
    | validUser | user123  | user123         |
    | validUser | short    | short           |
    | validUser | 123456   | 123456          |
    | user@123  | pass123  | pass123         |
    | user name | pass123  | pass123         |
    | validUser | pass 123 | pass 123        |
    
    
     #Examples:
      #| action                                                                 |
      #| User enters different password and confirm password and clicks Register |
      #| User enters password that is similar to personal details and clicks Register |
      #| User enters password that is below minimum length and clicks Register  |
      #| User enters numeric password and clicks Register                       |
      #| User enters username with special characters and clicks Register       |
      #| User enters username with spaces and clicks Register                   |
      #| User enters password with spaces and clicks Register                   |