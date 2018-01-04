Feature: Informational Displays for an Adaptive Cruise Control (ACC) system.
  As James May
  I want to be informed of events related to the ACC
  So that I know what it is doing

Scenario: 'should show Time Gap Selection indicator when engaged'
     Given: the ACC indicator is 'Engaged'
      When: I set the Time Gap to '3'
      Then: I see '3' on the Time Gap Selection

Scenario: 'should show set speed indicator when engaged'
   Given: the ACC indicator is 'Standby'
    When: I set the speed to '55 mph'
    Then: I see '55 mph' as the Current Set Speed

Scenario: 'should show Vehicle Detected indicator when Forward Vehicle detected'
     Given: I see the ACC 'Engaged' indicator
      When: a Forward Vehicle is detected
      Then: I see the Vehicle Detected indicator
