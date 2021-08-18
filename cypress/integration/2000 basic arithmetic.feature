Feature: Basic arithmetic tests of uploaded RPN calculator

  Check number entry and addition 

  Scenario: addition test
    # to avoid switching URLs, have to use calc in IDE
    Given load project "newcalc6"
     Then enter "1234567890"
     Then press "enter"
     Then enter "9876543210"
     Then press "plus"
     Then result is "11111111100" 
