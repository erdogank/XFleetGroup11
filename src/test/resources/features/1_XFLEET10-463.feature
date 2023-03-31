@XFLEET10-885
Feature: Default

	Background:
		#@XFLEET10-463
		Given The user is on the log in page
		

	#{color:#00875a}*User Story :* {color}
	#
	#As a 'Sales Manager' and 'Store Manager', I should be able to delete a car
	#
	# 
	#
	#{color:#ff8b00}*_Acceptance Criteria:_*{color}
	#
	#{color:#de350b}*1-All users can see the delete button by hovering over the three dots at the end of each row*{color}
	#
	#{*}2{*}- "Delete Confirmation" pop up should be displayed when the user clicks on the delete button
	#
	#{*}3{*}-"You do not have permission to perform this action." message should be displayed if the driver clicks on the "Yes, Delete" button.
	#
	#{*}4{*}- 'Sales Manager' and 'Store Manager' can delete any car by clicking on the delete button at the end of each row and the "Item deleted" message should be displayed.
	#
	#{*}5{*}- When 'Sales Manager' and 'Store Manager' go to the 'General Information' page by clicking on any vehicle/row, they can delete any vehicle by clicking on the 'Delete' button and the "Car deleted" message should be displayed.
	#
	#{*}6{*}-When 'Sales Manager' and 'Store Manager' delete a car, the corresponding car should also be removed from the Fleet-Vehicle page.
	@XFLEET10-802
	Scenario Outline: Verify all users can see the delete button by hovering over the three dots at the end of each row
		All users can see the delete button by hovering over the three dots at the end of each row
		
		    When user logins with his her "<userName>" and "<passWord>"
		    And choose Vehicles from Fleet menu
		    And hover over three dot menu on any row
		    Then she he must see the delete button
		    
		    Examples:
		     | userName        | passWord    |
		     | storemanager51  | UserUser123 |
		     | salesmanager101 | UserUser123 |