Feature: State Transitions for an Adaptive Cruise Control (ACC) system.
  As James May
  I want the Adaptive Cuise Control to be predictable
  So that I have confidence in it's abilities

Scenario: 'should stay Off when ACC is Off'
   Given: I turn the ACC 'Off'
    When: I set the cuise speed
    Then: the ACC indicator 'does not display'

Scenario: 'should change to Standby when at minimum set speed'
   Given: I turn the ACC 'On'
    When: the speed reaches 'minimum set'
    Then: the ACC indicator is now 'Standby'

Scenario: 'should change to Engaged when set speed is selected'
   Given: the ACC indicator is 'Standby'
    When: I set the cuise speed
    Then: the ACC indicator is now 'Engaged'

Scenario: 'should disengage when brake is depressed'
   Given: the ACC indicator is originally 'Engaged'
    When: I depress the 'brake' pedal
    Then: the ACC indicator is now 'Standby'

Scenario: 'should remain disengaged after brake is depressed'
   Given: I have depressed the 'brake' while ACC was 'Engaged'
     And: the ACC indicator is originally 'Standby'
    When: the speed reaches 'Set Speed'
    Then: the ACC indicator is now 'Standby'

Scenario: 'should disengage when accelerator is depressed'
   Given: the ACC indicator is originally 'Engaged'
    When: I depress the 'accelerator' pedal
    Then: the ACC indicator is now 'Standby'

Scenario: 'should reengage after accelerator is depressed'
   Given: I have depressed the 'accelerator' while ACC was 'Engaged'
     And: the ACC indicator is originally 'Standby'
    When: the speed reaches 'Set Speed'
    Then: the ACC indicator is now 'Engaged'

Scenario: 'should disengage when clutch is depressed'
   Given: the ACC indicator is originally 'Engaged'
    When: I depress the 'clutch' pedal
    Then: the ACC indicator is now 'Standby'
