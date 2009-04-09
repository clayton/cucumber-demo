When /^I dispose of intern "(\d+)"$/ do |id_number|
  Intern.find_by_number(id_number).destroy 
end

# DRY???

Then /^I should only have intern "(\d+)"$/ do |id_number|
  Intern.count.should == 1
  Intern.first.number.should == id_number.to_i
end

Then /^I should still have intern "(\d+)"$/ do |id_number|
  Intern.count.should == 1
  Intern.first.number.should == id_number.to_i
end

