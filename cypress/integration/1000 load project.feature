Feature: load project

  for basic IDE tests

  # need key value database on pybase !!!

  Scenario: load project
    Given I open the blox app
    And   load project "jsf"
    And   click on "#button1"
    Then  check "#textarea1" has text "xxxx5"
