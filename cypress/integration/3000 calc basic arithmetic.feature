Feature: Basic arithmetic tests of uploaded RPN calculator

  Check number entry and addition 

  Scenario: addition test
    Given I open the calc app
     Then enter "1234567890"
     Then press "enter"
     Then enter "9876543210"
     Then press "plus"
     Then result is "11111111100" 
