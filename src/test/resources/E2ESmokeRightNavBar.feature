Feature: Furniture Shop Right Nav Bar Smoke Tests

  Background:
    Given Set page load timeout to 90 seconds
    And Set implicit timeout to 6 seconds
    And Delete all cookies
    And Navigate to Furniture Shop site "http://projectfurnitureshopmd.000webhostapp.com"


  @E2E @SmokeTest
  Scenario: Select regulations from navigation bar
    When Click "Regulamin" button from right navigation bar
    And Wait 2000 milliseconds
    Then Displayed room and category text is "Regulamin"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/regulamin.php"

  @E2E @SmokeTest
  Scenario: Select contact from navigation bar
    When Click "Kontakt" button from right navigation bar
    And Wait 2000 milliseconds
    Then Displayed room and category text is "Kontakt"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/kontakt.php"

  @E2E @SmokeTest
  Scenario: Select discounts from navigation bar
    When Click "Promocje" button from right navigation bar
    And Wait 2000 milliseconds
    Then Displayed room and category text is "Promocje"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/promocja.php"
