Given(/^there are no stories written$/) do
end

Given(/^there is a story written$/) do
  @stories = [Story.new('My story', 'Joe',
                        DateTime.now, 'preview text...')]
end

When(/^I am on the stories page$/) do
  visit stories_path
end

Then(/^I should see that there are no stories$/) do
  page.should have_content("There are no stories.")
end

Then(/^I should see the story details$/) do
  story = @stories.first

  within('.story') do
    within('header') do
      page.should have_css('h1.title',    text: story.title)
      page.should have_css('.author',     text: story.author_name)
      page.should have_css('.written_on', text: story.written_on)
    end
    page.should have_css('.preview', text: story.preview)
  end
end
