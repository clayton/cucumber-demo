Given /^I have interns with the following attributes:$/ do |interns|
  interns.hashes.each do |attributes|
  	Factory.create(:intern, attributes)
  end
end

When /^I ask for the least valuable intern$/ do
  @worst = Intern.which_to_ridicule
end

Then /^I should find Intern with an id number of 5678$/ do
  @worst.number.should == 5678
end

