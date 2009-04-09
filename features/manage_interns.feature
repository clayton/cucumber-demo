Feature: Manage interns
  In order to have cold soda
  Jade
  wants interns roaming around
  
  Scenario: Preparing to hire an Intern
    Given I am on the interns page
    When I follow "Create Intern"
    Then I should be on the new intern page
  
  Scenario: Assimilating an Intern
  	Given I am on the new intern page
	  	And I fill in "ID Number" with "4567"
	  	And I fill in "Skills" with "stocking fridge, being laughed at"
	  	And I select "Bad" from "smell"
	  	And I check "Indentured Servant"
  	When I press "Put To Work"
  	Then I should see "Success: Intern Put to Work!"
  
  Scenario: Interns do not have human names
  	Given I am on the new intern page
  		And I fill in "ID Number" with "Andrew"
  	When I press "Put to Work"
  	Then I should see "FAIL: You're dumber than an Intern!"

  Scenario: Interns should be easy to get rid of
    Given an existing intern
      And I visit that intern's edit page
    When I press "Dispose"
    Then I should visit the interns page
      And I should not see that intern listed 
