Given(/^there are no stories written$/) do
end

When(/^I am on the stories page$/) do
  visit stories_path
end

Then(/^I should see that there are no stories$/) do
  page.should have_content("There are no stories.")
end
