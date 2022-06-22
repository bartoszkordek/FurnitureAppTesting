Feature: Furniture Shop Basket Smoke Tests

  Background:
    Given Set page load timeout to 90 seconds
    And Set implicit timeout to 6 seconds
    And Delete all cookies
    And Navigate to Furniture Shop site "http://projectfurnitureshopmd.000webhostapp.com"


  @E2E @SmokeTest
  Scenario: Open basket
    When Click Basket button
    And Wait 2000 milliseconds
    Then Displayed room and category text is "Informacje o koszyku"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/wyswietlanie_koszyka.php"
    And Message is "Musisz być zalogowanym, aby wyświetlić zawartość koszyka."