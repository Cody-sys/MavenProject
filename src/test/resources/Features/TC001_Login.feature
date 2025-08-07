Feature: Login Module

@log
  Scenario Outline: Verifying login with valid credentials without Enter Key
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify success message after login "Welcome Muraliganesh"

    Examples: 
      | User name               | Password   |
      | glittermurali@gmail.com | PassHack1! |
@login
  Scenario Outline: Verifying login with valid credentials with Enter Key
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>" with enter key
    Then User should verify success message after login "Welcome Muraliganesh"

    Examples: 
      | User name               | Password  |
      | glittermurali@gmail.com | PassHack1!|

  Scenario Outline: Verifying login with invalid credentials
    Given User is on the OMR Branch hotel page
    When User login "<User name>" and "<Password>"
    Then User should verify error message after login "Invalid Login details or Your Password might have expired."

    Examples: 
      | User name 									| Password |
      |     glittermurali@gmail.com |    12345 |
