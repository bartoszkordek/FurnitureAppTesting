Feature: Furniture Shop Login Smoke Tests

  Background:
    Given Set page load timeout to 90 seconds
    And Set implicit timeout to 6 seconds
    And Delete all cookies
    And Navigate to Furniture Shop site "http://projectfurnitureshopmd.000webhostapp.com"


  @E2E @SmokeTest
  Scenario: Invalid login - invalid credentials
    When Click Login button
    And Wait 1000 milliseconds
    And Wait till login form is loaded
    Then Displayed header text is "Logowanie"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/logowanie.php"
    When Provide email "wrong.email@test.com" in login form
    And Provide password "WrongPassword!" in login form
    And Click Login Submit button
    And Wait 2000 milliseconds
    Then Login message is "Nieprawidłowy email lub hasło!"

  @E2E @SmokeTest
  Scenario: Invalid login - missing email
    When Click Login button
    And Wait 1000 milliseconds
    And Wait till login form is loaded
    Then Displayed header text is "Logowanie"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/logowanie.php"
    When Provide password "WrongPassword!" in login form
    And Click Login Submit button
    And Wait 2000 milliseconds
    Then Url is "http://projectfurnitureshopmd.000webhostapp.com/logowanie.php"

  @E2E @SmokeTest
  Scenario: Invalid login - missing password
    When Click Login button
    And Wait 1000 milliseconds
    And Wait till login form is loaded
    Then Displayed header text is "Logowanie"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/logowanie.php"
    When Provide email "wrong.email@test.com" in login form
    And Click Login Submit button
    And Wait 2000 milliseconds
    Then Url is "http://projectfurnitureshopmd.000webhostapp.com/logowanie.php"