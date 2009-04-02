Feature: Determining Value of Interns
In order to feel good about ourselves
Integrum Employees
Need to know how meaningless an Intern is

	Scenario: Calculating value of life
		Given I have interns with the following attributes:
		|number|smell|indentured_servant|
		|5678|bad|true|
		|1234|tolerable|false|
		When I ask for the least valuable intern
		Then I should find Intern with an id number of 5678
