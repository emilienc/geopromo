Given /^some promotions exists closed and far to me$/ do
  20.times {Factory :promotion}
end

When /^I ask for promotions near me$/ do
  visit path_to("closer")
end

Then /^I see only promotions closed to me$/ do
  page.should have_content "la cadiere"
  
end
