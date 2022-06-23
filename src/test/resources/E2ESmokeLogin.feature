Feature: Furniture Shop Login Smoke Tests

  Background:
    Given Set page load timeout to 90 seconds
    And Set implicit timeout to 6 seconds
    And Delete all cookies
    And Navigate to Furniture Shop site "http://projectfurnitureshopmd.000webhostapp.com"


  @E2E @SmokeTest
  Scenario: Invalid login - invalid credentials
    When Click Login button
    And Wait 2000 milliseconds
    And Wait till login form is loaded
    Then Displayed room and category text is "Logowanie"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/logowanie.php"
