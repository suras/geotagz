When(/^i enter a address "(.*?)"$/) do |arg1|
	visit '/locations/new'
	fill_in "location_address", :with => arg1
  
end

When(/^i click the submit button$/) do
	click_button "Create Location"
  
end

Then(/^i should see a success message$/) do
	page.should have_content "Location was successfully created."
  
end