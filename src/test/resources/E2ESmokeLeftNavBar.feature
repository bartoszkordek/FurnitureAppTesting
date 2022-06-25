Feature: Furniture Shop Left Nav Bar Smoke Tests

  Background:
    Given Set page load timeout to 90 seconds
    And Set implicit timeout to 6 seconds
    And Delete all cookies
    And Navigate to Furniture Shop site "http://projectfurnitureshopmd.000webhostapp.com"


  @E2E @SmokeTest
  Scenario: Select kitchen chairs from navigation bar
    When Click "Kuchnia" button from left navigation bar
    And Select "Krzesła" from dropdown from "Kuchnia" left navigation bar button
    And Wait 2000 milliseconds
    Then Displayed header text is "Krzesła do kuchni"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/krzesla_kuchnia.php"

  @E2E @SmokeTest
  Scenario: Select kitchen tables from navigation bar
    When Click "Kuchnia" button from left navigation bar
    And Select "Stoły" from dropdown from "Kuchnia" left navigation bar button
    And Wait 2000 milliseconds
    Then Displayed header text is "Stoły do kuchni"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/stoly_kuchnia.php"

  @E2E @SmokeTest
  Scenario: Select kitchen wardrobes from navigation bar
    When Click "Kuchnia" button from left navigation bar
    And Select "Szafki" from dropdown from "Kuchnia" left navigation bar button
    And Wait 2000 milliseconds
    Then Displayed header text is "Szafki do kuchni"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/szafki_kuchnia.php"

  @E2E @SmokeTest
  Scenario: Select kitchen worktops from navigation bar
    When Click "Kuchnia" button from left navigation bar
    And Select "Blaty" from dropdown from "Kuchnia" left navigation bar button
    And Wait 2000 milliseconds
    Then Displayed header text is "Blaty do kuchni"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/blaty_kuchnia.php"

  @E2E @SmokeTest
  Scenario: Select bathroom mirrors from navigation bar
    When Click "Łazienka" button from left navigation bar
    And Select "Lustra" from dropdown from "Łazienka" left navigation bar button
    And Wait 2000 milliseconds
    Then Displayed header text is "Lustra do łazienki"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/lazienka_lustra.php"

  @E2E @SmokeTest
  Scenario: Select bathroom sinks from navigation bar
    When Click "Łazienka" button from left navigation bar
    And Select "Umywalki" from dropdown from "Łazienka" left navigation bar button
    And Wait 2000 milliseconds
    Then Displayed header text is "Umywalki do łazienki"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/lazienka_umywalki.php"

  @E2E @SmokeTest
  Scenario: Select bathroom wardrobes from navigation bar
    When Click "Łazienka" button from left navigation bar
    And Select "Szafki" from dropdown from "Łazienka" left navigation bar button
    And Wait 2000 milliseconds
    Then Displayed header text is "Szafki do łazienki"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/lazienka_szafki.php"

  @E2E @SmokeTest
  Scenario: Select bathroom accessories from navigation bar
    When Click "Łazienka" button from left navigation bar
    And Select "Akcesoria Łazienkowe" from dropdown from "Łazienka" left navigation bar button
    And Wait 2000 milliseconds
    Then Displayed header text is "Akcesoria do łazienki"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/lazienka_akcesorie_lazienkowe.php"

  @E2E @SmokeTest
  Scenario: Select living room tables from navigation bar
    When Click "Salon" button from left navigation bar
    And Select "Stoły" from dropdown from "Salon" left navigation bar button
    And Wait 2000 milliseconds
    Then Displayed header text is "Stoły do salonu"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/salon_stoly.php"

  @E2E @SmokeTest
  Scenario: Select living room wardrobes from navigation bar
    When Click "Salon" button from left navigation bar
    And Select "Szafy" from dropdown from "Salon" left navigation bar button
    And Wait 2000 milliseconds
    Then Displayed header text is "Szafy do salonu"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/salon_szafy.php"

  @E2E @SmokeTest
  Scenario: Select living room corners from navigation bar
    When Click "Salon" button from left navigation bar
    And Select "Narożniki" from dropdown from "Salon" left navigation bar button
    And Wait 2000 milliseconds
    Then Displayed header text is "Narożniki do salonu"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/salon_narozniki.php"

  @E2E @SmokeTest
  Scenario: Select living room chairs from navigation bar
    When Click "Salon" button from left navigation bar
    And Select "Krzesła" from dropdown from "Salon" left navigation bar button
    And Wait 2000 milliseconds
    Then Displayed header text is "Krzesła do salonu"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/salon_krzesla.php"

  @E2E @SmokeTest
  Scenario: Select dining room chairs from navigation bar
    When Click "Jadalnia" button from left navigation bar
    And Select "Krzesła" from dropdown from "Jadalnia" left navigation bar button
    And Wait 2000 milliseconds
    Then Displayed header text is "Krzesła do jadalni"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/jadalnia_krzesla.php"

  @E2E @SmokeTest
  Scenario: Select dining room tables from navigation bar
    When Click "Jadalnia" button from left navigation bar
    And Select "Stoły" from dropdown from "Jadalnia" left navigation bar button
    And Wait 2000 milliseconds
    Then Displayed header text is "Stoły do jadalni"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/jadalnia_stoly.php"

  @E2E @SmokeTest
  Scenario: Select dining room chests of drawers from navigation bar
    When Click "Jadalnia" button from left navigation bar
    And Select "Komody" from dropdown from "Jadalnia" left navigation bar button
    And Wait 2000 milliseconds
    Then Displayed header text is "Komody do jadalni"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/jadalnia_komody.php"

  @E2E @SmokeTest
  Scenario: Select dining room glass-case from navigation bar
    When Click "Jadalnia" button from left navigation bar
    And Select "Witryny" from dropdown from "Jadalnia" left navigation bar button
    And Wait 2000 milliseconds
    Then Displayed header text is "Witryny do jadalni"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/jadalnia_witryny.php"

  @E2E @SmokeTest
  Scenario: Select bedroom beds from navigation bar
    When Click "Sypialnia" button from left navigation bar
    And Select "Łóżka" from dropdown from "Sypialnia" left navigation bar button
    And Wait 2000 milliseconds
    Then Displayed header text is "Łóżka do sypialni"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/sypialnia_lozka.php"

  @E2E @SmokeTest
  Scenario: Select bedroom wardrobes from navigation bar
    When Click "Sypialnia" button from left navigation bar
    And Select "Szafy" from dropdown from "Sypialnia" left navigation bar button
    And Wait 2000 milliseconds
    Then Displayed header text is "Szafy do sypialni"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/sypialnia_szafy.php"

  @E2E @SmokeTest
  Scenario: Select bedroom mattress from navigation bar
    When Click "Sypialnia" button from left navigation bar
    And Select "Materace" from dropdown from "Sypialnia" left navigation bar button
    And Wait 2000 milliseconds
    Then Displayed header text is "Materace do sypialni"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/sypialnia_materace.php"

  @E2E @SmokeTest
  Scenario: Select bedroom mirrors from navigation bar
    When Click "Sypialnia" button from left navigation bar
    And Select "Lustra" from dropdown from "Sypialnia" left navigation bar button
    And Wait 2000 milliseconds
    Then Displayed header text is "Lustra do sypialni"
    And Url is "http://projectfurnitureshopmd.000webhostapp.com/sypialnia_lustra.php"