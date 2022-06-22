Feature: Furniture Shop left top corner Icon Smoke Tests

  Background:
    Given Set page load timeout to 90 seconds
    And Set implicit timeout to 6 seconds
    And Delete all cookies

  @E2E @SmokeTest
  Scenario: Click on left top corner Icon from http://projectfurnitureshopmd.000webhostapp.com site
    Given Navigate to Furniture Shop site "http://projectfurnitureshopmd.000webhostapp.com"
    When Click on left top corner Icon
    And Wait 2000 milliseconds
    Then Url is "http://projectfurnitureshopmd.000webhostapp.com/index.php"