Feature: Intern Business Logic
  In order to maintain order
  As a company with interns
  We want to enforce some rules

Scenario: You must have at least one intern
	Given I have interns with the following attributes:
	|number|smell|indentured_servant|
	|5678|bad|true|
	|1234|tolerable|false|
  When I dispose of intern "5678"
  Then I should only have intern "1234"
  When I dispose of intern "1234"
  Then I should still have intern "1234"
