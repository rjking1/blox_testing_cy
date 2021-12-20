Feature: Basic arithmetic tests of uploaded RPN calculator

  Check number entry and addition 

  Scenario: addition test
    Given I open the calc app
     Then press "clear"
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

  Scenario: enter and auto enter test
    Then  enter "1.2"
    Then  press "enter"
    Then  press "sign"
    Then  press "mult"
    Then  result is "-1.44" 
    Then  enter "1.2"
    Then  press "sign"
    Then  press "div"
    Then  result is "1.2" 

  Scenario: auto enter and stack test
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

  Scenario: roll and x <> y tests
    Then  enter "1"
    Then  press "enter"
    Then  enter "22"
    Then  press "enter"
    Then  enter "333"
    Then  press "enter"
    Then  enter "4444"
    Then  press "rolld"
    Then  press "rolld"
    Then  press "rolld"
    Then  result is "1" 
    Then  press "swap"
    Then  result is "4444" 
