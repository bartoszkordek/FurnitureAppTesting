Feature: Furniture Shop Search Bar Smoke Tests

  Background:
    Given Set page load timeout to 90 seconds
    And Set implicit timeout to 6 seconds
    And Delete all cookies
    And Navigate to Furniture Shop site "http://projectfurnitureshopmd.000webhostapp.com"

  @E2E @SmokeTest
  Scenario: Search random product using search bar
    When Type "Szafa" in search bar
    And Click search button
    And Wait 2000 milliseconds
    Then Displayed search text is "Wynik wyszukiwania dla: Szafa"