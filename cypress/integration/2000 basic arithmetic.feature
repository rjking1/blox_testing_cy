Feature: Basic arithmetic tests of RPN calculator

  Check number entry and addition 

  Scenario: addition test
    Given I open the blox app
    And   load project "newcalc6"
    Then  enter "1234567890"
    Then  press "enter"
    Then  enter "9876543210"
    Then  press "plus"
    Then  check "#input1" has text "11111111100"

  Scenario: signed float test
    #Given load project "newcalc6"
    Then  enter "1.2"
    Then  press "enter"
    Then  enter "1.2"
    Then  press "sign"
    Then  press "mult"
    Then  check "#input1" has text "-1.44"


  Scenario: auto enter test
    #Given load project "newcalc6"
    Then  enter "1.2"
    Then  press "enter"
    Then  enter "1.2"
    Then  press "sign"
    Then  press "mult"
    Then  check "#input1" has text "-1.44"
    Then  enter "1.2"
    Then  press "sign"
    Then  press "div"
    Then  check "#input1" has text "1.2"

  Scenario: stack test
    #Given load project "newcalc6"
    Then  enter "2"
    Then  press "enter"
    Then  enter "3"
    Then  press "mult"
    Then  enter "4"
    Then  press "enter"
    Then  enter "5"
    Then  press "mult"
    Then  press "minus"
    Then  check "#input1" has text "-14"
