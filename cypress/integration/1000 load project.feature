Feature: load project

  for basic IDE tests

  Scenario: load project
    Given I open the blox app
    And   load project "jsf"
    And   click on "#button1"
    Then  check "#textarea1" has text "xxxx5"
