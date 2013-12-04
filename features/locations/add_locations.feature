Feature: Add A Location
	In order to add a location i need to enter an address


	Scenario: user enters the address
		 When i enter a address "chennai, tamilnadu"
		 And i click the submit button
		 Then i should see a success message
 