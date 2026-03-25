Feature: Queue feature in DSAlgo

  Background: 
    Given the user is signed in to dsAlgo Portal
    When the user clicks on Queue Get Started button
    Then the user lands on "Queue" page

 
  # Navigation Scenarios


  Scenario Outline: Verify that user is able to navigate to "<Topic>" page on Queue
    Given the user is on Queue page
    When the user clicks on "<Topic>" link on Queue page
    Then the user should be navigated to "<Topic>" page on Queue

    Examples: 
      | Topic                                  |
      | Implementation of Queue in Python      |
      | Implementation using collections.deque |
      | Implementation using array             |
      | Queue Operations                       |

  # ------------------------------
  # Try Editor Navigation Scenarios
  # ------------------------------
  Scenario Outline: Verify Try Here button on each page of Queue links
    Given the user is on "<QueuePage>" page of Queue
    When the user clicks on Try Here button on Queue page
    Then the user should be navigated to Try Editor page with Run button

    Examples: 
      | QueuePage                              |
      | Implementation of Queue in Python      |
      | Implementation using collections.deque |
      | Implementation using array             |
      | Queue Operations                       |

  # ------------------------------
  # Valid Code Execution Scenarios
  # ------------------------------
  Scenario Outline: Verify that user is able to see output for valid Python code for Queue links
    Given the user is in the Try Editor page on Queue page
    When the user writes Python code from "<sheetname>" and <rownumber> and clicks the Run button
    Then the output should match with expected result from "<sheetname>" and <rownumber> for Queue pages

    Examples: 
      | sheetname  | rownumber |
      | pythoncode | 0         |

  # ------------------------------
  # Error Handling Scenarios
  # ------------------------------
  Scenario: Verify that user cannot click Run button without entering code on Queue links
    Given the user is in the Try Editor page on Queue page
    When the user clicks on Run button without code
    Then the user should see the error message in alert window on Queue links

  Scenario Outline: Verify that user receives error message on click of Run button with incorrect code for Queue links
    Given the user is in the Try Editor page on Queue page
    When the user clicks on Run button with incorrect code from "<sheetname>" and <rownumber>
    Then the user should see the error message in alert window and get the alert text on Queue links

    Examples: 
      | sheetname  | rownumber |
      | pythoncode | 1         |

  Scenario Outline: Verify that user cannot perform any operations without clicking OK on alert window on Queue links
    Given the user is in the Try Editor page on Queue page
    When the user types incorrect code from "<sheetname>" and <rownumber>
    Then the user should see alert window and cannot click Run button on Queue links

    Examples: 
      | sheetname  | rownumber |
      | pythoncode | 1         |

  # ------------------------------
  # Practice Page Navigation
  # ------------------------------
  Scenario: Verify that user is able to navigate to Practice page on Queue page
    Given the user is on "Implementation of Queue in Python" page of Queue
    When the user clicks on Practice Questions link
    Then the user should land on Practice page on Queue page

  # ------------------------------
  # SignOut / Logout
  # ------------------------------
  Scenario: Verify if user is able to navigate to Home page on clicking SignOut link
    Given the user is on Queue page
    When the user clicks on Sign Out button on Queue page
    Then the user should navigate back to Home page and can view "Logged out successfully" message