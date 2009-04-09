Given /^the following interns:$/ do |interns|
  Intern.create!(interns.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) intern$/ do |pos|
  visit interns_url
  within("table > tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following interns:$/ do |interns|
  interns.rows.each_with_index do |row, i|
    row.each_with_index do |cell, j|
      response.should have_selector("table > tr:nth-child(#{i+2}) > td:nth-child(#{j+1})") { |td|
        td.inner_text.should == cell
      }
    end
  end
end

Given /^an existing intern$/ do
  @intern = Factory.create(:intern) 
end

Given /^I visit that intern's show page$/ do
 visit(intern_path(@intern)) 
end

Then /^I should not see that intern listed$/ do
  response.body.should_not have_selector("ul > a[href=#{intern_path(@intern)}]")
end

