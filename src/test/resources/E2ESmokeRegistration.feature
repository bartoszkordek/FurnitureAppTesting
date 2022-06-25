Feature: Furniture Shop Register Smoke Tests

  Background:
    Given Set page load timeout to 90 seconds
    And Set implicit timeout to 6 seconds
    And Delete all cookies
    And Navigate to Furniture Shop site "http://projectfurnitureshopmd.000webhostapp.com"

  @E2E @SmokeTest
  Scenario: Main getting form scenario - Invalid registration - password mismatch
    When Click Register button
    And Wait 1000 milliseconds
    And Wait till register form is loaded
    Then Displayed header text is "Rejestracja"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/rejestracja.php"
    When Provide name "John" in register form
    And Provide email "sample.email@invalid.test.com" in register form
    And Provide password "SamplePassword!" in register form
    And Click Accept regulations checkbox in register form
    Then Accept regulations checkbox in register form is clicked
    When Provide repeated password "NotTheSamePassword!" in register form and click Enter
    And Wait 2000 milliseconds
    Then Url is "http://projectfurnitureshopmd.000webhostapp.com/rejestracja.php"
    And Mismatch password error message is "Podane hasła nie są identyczne"

  @E2E @SmokeTest
  Scenario: Main getting form scenario - Invalid registration - missing name
    When Click Register button
    And Wait 1000 milliseconds
    And Wait till register form is loaded
    Then Displayed header text is "Rejestracja"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/rejestracja.php"
    When Provide email "sample.email@missing.name.test.com" in register form
    And Provide password "SamplePassword!" in register form
    And Click Accept regulations checkbox in register form
    Then Accept regulations checkbox in register form is clicked
    When Provide repeated password "SamplePassword!" in register form and click Enter
    And Wait 2000 milliseconds
    Then Url is "http://projectfurnitureshopmd.000webhostapp.com/rejestracja.php"

  @E2E @SmokeTest
  Scenario: Main getting form scenario - Invalid registration - missing email
    When Click Register button
    And Wait 1000 milliseconds
    And Wait till register form is loaded
    Then Displayed header text is "Rejestracja"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/rejestracja.php"
    When Provide name "John" in register form
    And Provide password "SamplePassword!" in register form
    And Click Accept regulations checkbox in register form
    Then Accept regulations checkbox in register form is clicked
    When Provide repeated password "SamplePassword!" in register form and click Enter
    And Wait 2000 milliseconds
    Then Url is "http://projectfurnitureshopmd.000webhostapp.com/rejestracja.php"

  @E2E @SmokeTest
  Scenario: Main getting form scenario - Invalid registration - missing first password
    When Click Register button
    And Wait 1000 milliseconds
    And Wait till register form is loaded
    Then Displayed header text is "Rejestracja"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/rejestracja.php"
    When Provide name "John" in register form
    And Provide email "sample.email@missing.first.password.test.com" in register form
    And Click Accept regulations checkbox in register form
    Then Accept regulations checkbox in register form is clicked
    When Provide repeated password "SamplePassword!" in register form and click Enter
    And Wait 2000 milliseconds
    Then Url is "http://projectfurnitureshopmd.000webhostapp.com/rejestracja.php"

  @E2E @SmokeTest
  Scenario: Main getting form scenario - Invalid registration - missing repeated password
    When Click Register button
    And Wait 1000 milliseconds
    And Wait till register form is loaded
    Then Displayed header text is "Rejestracja"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/rejestracja.php"
    When Provide name "John" in register form
    And Provide email "sample.email@missing.repeated.password.test.com" in register form
    And Provide password "SamplePassword!" in register form
    And Click Accept regulations checkbox in register form
    Then Accept regulations checkbox in register form is clicked
    When Provide repeated password "" in register form and click Enter
    And Wait 2000 milliseconds
    Then Url is "http://projectfurnitureshopmd.000webhostapp.com/rejestracja.php"

  @E2E @SmokeTest
  Scenario: Main getting form scenario - Invalid registration - missing clicked Accept regulations checkbox
    When Click Register button
    And Wait 1000 milliseconds
    And Wait till register form is loaded
    Then Displayed header text is "Rejestracja"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/rejestracja.php"
    When Provide name "John" in register form
    And Provide email "sample.email@missing.accept.regulations.checkbox.test.com" in register form
    And Provide password "SamplePassword!" in register form
    Then Accept regulations checkbox in register form is not clicked
    When Provide repeated password "SamplePassword!" in register form and click Enter
    And Wait 2000 milliseconds
    Then Url is "http://projectfurnitureshopmd.000webhostapp.com/rejestracja.php"


  @E2E @SmokeTest
  Scenario: Main getting form scenario - Invalid registration - user already exists
    When Click Register button
    And Wait 1000 milliseconds
    And Wait till register form is loaded
    Then Displayed header text is "Rejestracja"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/rejestracja.php"
    When Provide name "John" in register form
    And Provide email "sample.email@test.com" in register form
    And Provide password "SamplePassword!" in register form
    And Click Accept regulations checkbox in register form
    Then Accept regulations checkbox in register form is clicked
    When Provide repeated password "SamplePassword!" in register form and click Enter
    And Wait 2000 milliseconds
    Then Url is "http://projectfurnitureshopmd.000webhostapp.com/rejestracja.php"
    And Already existed error message is "Istnieje juz takie konto z emailem"