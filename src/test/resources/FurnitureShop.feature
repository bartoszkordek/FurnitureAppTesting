Feature: Furniture Shop Smoke Tests

  Background:
    Given Set page load timeout to 90 seconds
    And Set implicit timeout to 6 seconds
    And Delete all cookies
    And Navigate to Furniture Shop site "http://projectfurnitureshopmd.000webhostapp.com"

  @SmokeTest
  Scenario: Search random product using search bar
    When Type "Szafa" in search bar
    And Click search button
    And Wait 2000 milliseconds
    Then Displayed text is "Wynik wyszukiwania dla: Szafa"

  @SmokeTest
  Scenario: Select kitchen chairs from navigation bar
    When Click "Kuchnia" button from navigation bar
    And Select "Krzesła" from dropdown from "Kuchnia" navigation bar button
    When Wait 2000 milliseconds

  @SmokeTest
  Scenario: Select kitchen tables from navigation bar
    When Click "Kuchnia" button from navigation bar
    And Select "Stoły" from dropdown from "Kuchnia" navigation bar button
    When Wait 2000 milliseconds

  @SmokeTest
  Scenario: Select kitchen wardrobes from navigation bar
    When Click "Kuchnia" button from navigation bar
    And Select "Szafki" from dropdown from "Kuchnia" navigation bar button
    When Wait 2000 milliseconds

  @SmokeTest
  Scenario: Select kitchen worktops from navigation bar
    When Click "Kuchnia" button from navigation bar
    And Select "Blaty" from dropdown from "Kuchnia" navigation bar button
    When Wait 2000 milliseconds

  @SmokeTest
  Scenario: Select living room wardrobe from navigation bar
    When Click "Salon" button from navigation bar
    And Select "Szafy" from dropdown from "Salon" navigation bar button
    When Wait 2000 milliseconds