Feature: HomePage
  Home Page should display Appropriate Personas

  Scenario: List of Personas should be correct
    Given Below Persona exists
      |name   |
      |Atmaram|
      |Keshav |
      |Prasad |
    When I navigate to Persona List
    Then I See following Personas
        | name |
        | Atmaram |
        | Keshav |
        | Prasad |


