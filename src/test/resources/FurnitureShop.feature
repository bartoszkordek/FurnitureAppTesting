Feature: Furniture Shop Smoke Tests

  Background:
    Given Set page load timeout to 90 seconds
    And Set implicit timeout to 6 seconds
    And Delete all cookies
    And Navigate to Furniture Shop site "http://projectfurnitureshopmd.000webhostapp.com"

  @SmokeTest
  Scenario: Search random product using search bar
    When Type "Szafa" in search bar
    When Click search button
    When Wait 2000 milliseconds
    Then Displayed text is "Wynik wyszukiwania dla: Szafa"
