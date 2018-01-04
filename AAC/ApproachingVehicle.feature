Feature: Approaching a Forward Vehicle using a Adaptive Cruise Control (ACC) system.
  As James May
  I want the Adaptive Cuise Control to slow down as I approch a Forward Vehicle
  So that I maintain a safe distance behind it

Scenario Outline: 'should modify decceleration based on Time Gap 100 -> 88 m/s'
     Given: the ACC is Engaged
       And: I am traveling at <speed> m/s
      When: there is <distance> m to the Forward Vehicle
      Then: I slow down <acceleration> m/s/s
       And: the Time Gap should be <t>

  Examples:
    | speed | dist | accel |  t   |
    | 100.0 |  254 |   0.0 | 2.54 |
    | 100.0 |  242 |   0.0 | 2.42 |
    | 100.0 |  230 |  -0.5 | 2.30 |
    |  99.5 |  218 |  -0.5 | 2.19 |
    |  99.0 |  206 |  -0.5 | 2.08 |
    |  98.5 |  195 |  -0.5 | 1.98 |
    |  98.0 |  184 |  -0.5 | 1.88 |
    |  97.5 |  174 |  -1.5 | 1.78 |
    |  96.0 |  164 |  -1.0 | 1.70 |
    |  95.0 |  156 |  -1.0 | 1.64 |
    |  94.0 |  149 |  -1.0 | 1.58 |
    |  93.0 |  144 |  -1.0 | 1.55 |
    |  92.0 |  140 |  -1.0 | 1.52 |
    |  91.0 |  137 |  -1.0 | 1.51 |
    |  90.0 |  135 |  -1.0 | 1.50 |
    |  89.0 |  134 |  -0.5 | 1.50 |
    |  88.5 |  133 |   0.0 | 1.50 |
    |  88.5 |  132 |  -0.5 | 1.50 |
    |  88.0 |  132 |   0.0 | 1.50 |
