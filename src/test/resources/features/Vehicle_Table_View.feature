@XFLEET10-703
Feature: US003 - Vehicle Table View
  As a user, I should be able to see all vehicle information in a table under Fleet-Vehicle page

  Background: For the scenarios in the feature file, user is expected to be on login page
    Given user should be on the login page

@XFLEET10-858
  Scenario Outline: All user types can see all vehicle information under 'Fleet-Vehicles' module
    When user logins with his her "<userName>" and "<passWord>"
    And choose Vehicles from Fleet menu
    Then user sees all vehicle information

    Examples:
      | userName        | passWord    |
      | storemanager51  | UserUser123 |
      | salesmanager101 | UserUser123 |

@XFLEET10-866
  Scenario Outline: User can see the total page number
    When user logins with his her "<userName>" and "<passWord>"
    And  choose Vehicles from Fleet menu
    Then users see the total page number

    Examples:
      | userName        | passWord    |
      | storemanager51  | UserUser123 |
      | salesmanager101 | UserUser123 |

@XFLEET10-867
  Scenario Outline: User can go to next page clicking ">" button and can go to previous page clicking "<" button
    When user logins with his her "<userName>" and "<passWord>"
    And  choose Vehicles from Fleet menu
    And user should go to next page clicking > button
    And user should go to previous page clicking < button


    Examples:
      | userName        | passWord    |
      | storemanager51  | UserUser123 |
      | salesmanager101 | UserUser123 |

@XFLEET10-868
  Scenario Outline:User can see total recordings of vehicles
    When user logins with his her "<userName>" and "<passWord>"
    And  choose Vehicles from Fleet menu
    Then user should see total recordings

    Examples:
      | userName | passWord    |
      | storemanager51  | UserUser123 |
      | salesmanager101 | UserUser123 |

  @XFLEET10-869
  Scenario Outline: User can download table data in XLS or CSV format from "Export Grid" (a confirmation message is enough to validate)
    When user logins with his her "<userName>" and "<passWord>"
    And  choose Vehicles from Fleet menu
    And user click Export Grid
    And user select CSV option
    Then user sees the confirmation message

    Examples:
      | userName        | passWord    |
      | storemanager51  | UserUser123 |
      | salesmanager101 | UserUser123 |