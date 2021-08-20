Feature: Basic arithmetic tests of uploaded RPN calculator

  Check number entry and addition 

  Scenario: addition test
    Given I open the calc app
     Then enter "1234567890"
     Then press "enter"
     Then enter "9876543210"
     Then press "plus"
     Then result is "11111111100" 

  Scenario: signed float test
    Then  enter "1.2"
    Then  press "enter"
    Then  enter "1.2"
    Then  press "sign"
    Then  press "mult"
    Then  result is "-1.44" 

  Scenario: auto enter test
    Then  enter "1.2"
    Then  press "enter"
    Then  enter "1.2"
    Then  press "sign"
    Then  press "mult"
    Then  result is "-1.44" 
    Then  enter "1.2"
    Then  press "sign"
    Then  press "div"
    Then  result is "1.2" 

  Scenario: stack test
    Then  enter "2"
    Then  press "enter"
    Then  enter "3"
    Then  press "mult"
    Then  enter "4"
    Then  press "enter"
    Then  enter "5"
    Then  press "mult"
    Then  press "minus"
    Then  result is "-14" 
