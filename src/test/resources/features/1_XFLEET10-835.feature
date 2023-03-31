@XFLEET10-841
Feature: Default

	Background:
		#@XFLEET10-835
		Given user should be on the login page
		

	#{color:#00875a}*User Story :* {color}
	#
	#As a store manager and sales manager, I should be able to add an event
	#
	# 
	#
	#{color:#ff8b00}*_Acceptance Criteria:_*{color}
	#
	#*_{color:#de350b}1- User can access the "Add Event" page from the "General Information" page (by clicking on any vehicle/row under Fleet-Vehicle module){color}_*
	#{*}2{*}- After clicking on "Add event" button, "Add Event" page should pop up.
	#{*}3{*}- User can mark the event with any colour
	#{*}4{*}- User can click  "All-day event" check box and after click time boxes will disappear
	#{*}5{*}- User can repeat the action by specifying occurrence periods and ending time:
	#      a)Repeat options should include the options below (repeats dropdown menu):
	#           -> "Daily", "Weekly", "Monthly", "Yearly"
	#      b)Ending options should be as below and clickable
	#           -> "Never"
	#           -> "After"
	#           -> "By"
	#
	#{*}6{*}- All Users can see all events on the General information page
	@XFLEET10-836
	Scenario: XFLEET10-706-AC1-User can access the "Add Event" page from the "General Information" page by clicking on any vehicle/row under Fleet-Vehicle module
		When user logins with valid credentials
		And user hovers over Fleet and clicks on vehicles
		And user clicks on any vehicle
		Then user can see Add Event button	

	#{color:#00875a}*User Story :* {color}
	#
	#As a store manager and sales manager, I should be able to add an event
	#
	# 
	#
	#{color:#ff8b00}*_Acceptance Criteria:_*{color}
	#
	#1- User can access the "Add Event" page from the "General Information" page (by clicking on any vehicle/row under Fleet-Vehicle module)
	#{color:#de350b}_*2- After clicking on "Add event" button, "Add Event" page should pop up.*_{color}
	#{*}3{*}- User can mark the event with any colour
	#{*}4{*}- User can click  "All-day event" check box and after click time boxes will disappear
	#{*}5{*}- User can repeat the action by specifying occurrence periods and ending time:
	#      a)Repeat options should include the options below (repeats dropdown menu):
	#           -> "Daily", "Weekly", "Monthly", "Yearly"
	#      b)Ending options should be as below and clickable
	#           -> "Never"
	#           -> "After"
	#           -> "By"
	#
	#{*}6{*}- All Users can see all events on the General information page
	@XFLEET10-837
	Scenario: XFLEET10-706-AC2-After clicking on "Add event" button, "Add Event" page pops up.
		When user logins with valid credentials
		And user hovers over Fleet and clicks on vehicles
		And user clicks on any vehicle
		And user clicks on Add Event button
		Then Add Event page pop ups	

	#{color:#00875a}*User Story :* {color}
	#
	#As a store manager and sales manager, I should be able to add an event
	#
	# 
	#
	#{color:#ff8b00}*_Acceptance Criteria:_*{color}
	#
	#1- User can access the "Add Event" page from the "General Information" page (by clicking on any vehicle/row under Fleet-Vehicle module)
	#{*}2{*}- After clicking on "Add event" button, "Add Event" page should pop up.
	#{color:#de350b}_*3- User can mark the event with any colour*_{color}
	#{*}4{*}- User can click  "All-day event" check box and after click time boxes will disappear
	#{*}5{*}- User can repeat the action by specifying occurrence periods and ending time:
	#      a)Repeat options should include the options below (repeats dropdown menu):
	#           -> "Daily", "Weekly", "Monthly", "Yearly"
	#      b)Ending options should be as below and clickable
	#           -> "Never"
	#           -> "After"
	#           -> "By"
	#
	#{*}6{*}- All Users can see all events on the General information page
	@XFLEET10-838
	Scenario: XFLEET10-706-AC3-Verify User can mark the event with any colour
		When user logins with valid credentials
		And user hovers over Fleet and clicks on vehicles
		And user clicks on any vehicle
		And user clicks on Add Event button
		And Add Event page pop ups
		And user selects color
		Then the color is selected	

	#{color:#00875a}*User Story :* {color}
	#
	#As a store manager and sales manager, I should be able to add an event
	#
	# 
	#
	#{color:#ff8b00}*_Acceptance Criteria:_*{color}
	#
	#1- User can access the "Add Event" page from the "General Information" page (by clicking on any vehicle/row under Fleet-Vehicle module)
	#{*}2{*}- After clicking on "Add event" button, "Add Event" page should pop up.
	#{*}3{*}- User can mark the event with any colour
	#{color:#de350b}_*4- User can click  "All-day event" check box and after click time boxes will disappear*_{color}
	#{*}5{*}- User can repeat the action by specifying occurrence periods and ending time:
	#      a)Repeat options should include the options below (repeats dropdown menu):
	#           -> "Daily", "Weekly", "Monthly", "Yearly"
	#      b)Ending options should be as below and clickable
	#           -> "Never"
	#           -> "After"
	#           -> "By"
	#
	#{*}6{*}- All Users can see all events on the General information page
	@XFLEET10-839
	Scenario: XFLEET10-706-AC4-Verify User can repeat the action by specifying occurrence periods and ending time
		When user logins with valid credentials
		And user hovers over Fleet and clicks on vehicles
		And user clicks on any vehicle
		And user clicks on Add Event button
		And user selects repeat Checkbox
		Then repeat options are visible
		Then all three end options are visible and clickable	

	#{color:#00875a}*User Story :* {color}
	#
	#As a store manager and sales manager, I should be able to add an event
	#
	# 
	#
	#{color:#ff8b00}*_Acceptance Criteria:_*{color}
	#
	#1- User can access the "Add Event" page from the "General Information" page (by clicking on any vehicle/row under Fleet-Vehicle module)
	#{*}2{*}- After clicking on "Add event" button, "Add Event" page should pop up.
	#{*}3{*}- User can mark the event with any colour
	#{*}4{*}- User can click  "All-day event" check box and after click time boxes will disappear
	#5- User can repeat the action by specifying occurrence periods and ending time:
	#      a)Repeat options should include the options below (repeats dropdown menu):
	#           -> "Daily", "Weekly", "Monthly", "Yearly"
	#      b)Ending options should be as below and clickable
	#           -> "Never"
	#           -> "After"
	#           -> "By"
	#
	#{color:#FF0000}_*6- All Users can see all events on the General information page*_{color}
	@XFLEET10-840
	Scenario: XFLEET10-706-AC6-Verify All Users can see all events on the General information page
		When user logins with valid credentials
		And user hovers over Fleet and clicks on vehicles
		And user clicks on any vehicle with an event
		Then user can see event information	

	#{color:#00875a}*User Story :* {color}
	#
	#As a store manager and sales manager, I should be able to add an event
	#
	# 
	#
	#{color:#ff8b00}*_Acceptance Criteria:_*{color}
	#
	#1- User can access the "Add Event" page from the "General Information" page (by clicking on any vehicle/row under Fleet-Vehicle module)
	#{*}2{*}- After clicking on "Add event" button, "Add Event" page should pop up.
	#{*}3{*}- User can mark the event with any colour
	#{color:#de350b}_*4- User can click  "All-day event" check box and after click time boxes will disappear*_{color}
	#{*}5{*}- User can repeat the action by specifying occurrence periods and ending time:
	#      a)Repeat options should include the options below (repeats dropdown menu):
	#           -> "Daily", "Weekly", "Monthly", "Yearly"
	#      b)Ending options should be as below and clickable
	#           -> "Never"
	#           -> "After"
	#           -> "By"
	#
	#{*}6{*}- All Users can see all events on the General information page
	@XFLEET10-890
	Scenario: XFLEET10-706-AC4-Verify User can click "All-day event" check box and after click time boxes will disappear
		When user logins with valid credentials
		And user hovers over Fleet and clicks on vehicles
		And user clicks on any vehicle
		And user clicks on Add Event button
		And user selects All-day event Checkbox
		Then time-boxes disappear