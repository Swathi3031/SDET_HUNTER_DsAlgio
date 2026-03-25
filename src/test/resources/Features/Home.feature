Feature: DS Algo Portal and Home Page

  Background: Verify user can open DS Algo portal
    Given The user has browser open
    When The user enters the correct DS Algo Portal URL
    Then The user should be able to land on dsAlgo portal with Get Started button

  Scenario: Verify user can access Home page
    Given The user is on the DS Algo Portal
    When The user clicks the "Get Started" button on the landing page
    Then The user should be navigated to the Data Structure Introduction page, which displays the "Register" and "Sign in" links.

  # ------------------ NAVIGATION TO SIGN IN / REGISTER ------------------

  Scenario: Verify User is able to access sign in from the page
    Given User is in the home page
    When User clicks Sign in Button
    Then User should able to access the Sign in page

  Scenario: Verify User is able to access Register from the Home page
    Given User is in the home page
    When User clicks Register Button
    Then User should able to access the Register page

  # ------------------ WITHOUT SIGN IN ------------------

  Scenario Outline: Verify user is able to see "You are not logged in message" with out sign in for clicking Menu items
    Given User is in the Homepage
    When user clicks menu "<option>" from the Data structure drop down 
    Then User should be able to see "You are not loged in message" at the top under numpy ninja button

    Examples:
      | option      |
      | Arrays      |
      | Linked List |
      | Stack       |
      | Queue       |
      | Tree        |
      | Graph       |

  Scenario Outline: Verify user is able to see "You are not logged in message" without sign in for clicking getstarted 
    Given User is in the Homepage
    When user Get Started from the HomePage for "<option>" 
    Then User should be able to see "You are not loged in message" at the top under numpy ninja button

    Examples:
      | option          |
      | Data Structures |
      | Arrays          |
      | Linked List     |
      | Stack           |
      | Queue           |
      | Tree            |
      | Graph           |

  # ------------------ AFTER REGISTER / SIGN IN ------------------

  Scenario: Verify user is able to see New Account Created. You are logged in as xx message after register
    Given User is in the register page
    When user navigate to home page after Register
    Then User should be able to see "New Account Created. You are logged in as xx" at the top under numpy ninja button

  Scenario: Verify user is able to see You are logged in message after sign in
    Given User is in the Sign in page
    When user navigate to home page after Signin
    Then User should be able to see "You are loged in message" at the top under numpy ninja button

  Scenario: Verify user is able to see their user name at leftside top next to sign out button
    Given User is in the home page
    When user is in the home page after sign in with username and password
    Then User should be able to see their correct username at leftside top corner

  # ------------------ WITH SIGN IN ------------------

  Scenario Outline: Verify user is able to see menu items when click DataStructure dropdown
    Given User is in home page
    When user clicks DataStructure drop down after signin "<option>"
    Then User should be able to see menu items

    Examples:
      | option      |
      | Arrays      |
      | Linked List |
      | Stack       |
      | Queue       |
      | Tree        |
      | Graph       |

  Scenario Outline: VVerify user is able to navigate to corresponding info page when click on Getstarted for corresponding option with sign in
    Given User is in the home page
    When user clicks Get Started from the HomePage for "<option>"
    Then User should be navigated to the correct page

    Examples:
      | option          |
      | Data Structures |
      | Arrays          |
      | Linked List     |
      | Stack           |
      | Queue           |
      | Tree            |
      | Graph           |

  Scenario Outline: Verify user is able to navigate to corresponding info page when click on menu items with sign in
    Given User is in the home page
    When user clicks Get Started button in the menu box after sign in "<option>"
    Then User should be navigated to the correct page

    Examples:
      | option          |
      | Data Structures |
      | Arrays          |
      | Linked List     |
      | Stack           |
      | Queue           |
      | Tree            |
      | Graph           |

  # ------------------ SIGN OUT ------------------

  Scenario: Verify user is able to sign out from the page
    Given User is in the home page
    When user clicks sign out button
    Then User should be able to see "Logged out successffully " message

  Scenario: Verify user is able to see "logged out successfully" message
    Given User is in the home page
    When user clicks sign out button
    Then User should be able to see ""logged out successfully" at the top under numpy ninja button