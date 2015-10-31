Given /the following categories exist/ do |questions_table|
  questions_table.hashes.each do |category|
    Question.create!(category)
  end
end

Then /I should see all of the categories/ do
  visit "/questions/index"
#   expect(page).to have_link("Questions on Shapes", visible: false)
    expect(page).to have_text("All Categories")
end

When (/^I click "([^"]*)"$/) do |element|
#   visit "/questions/id?category=Shapes&id=Shapes"
#   click_on element
  %{I click (element)}  
  save_and_open_page
end

Then /^I pause for a while$/ do 
    sleep 3
end

Then /I print/ do
    print page.html
    expect(page).to have_content("Shapes")
end


# When /I am on the categories page/ do
#   all_categories = Question.all
# end

# When (/^I follow '([^']*)'/) do |link|
#   click_link(link)
# end


# Then(/^a question should be asked such as "([^"]*)"$/) do |text|
#   visit "/questions/id?category=Shapes&id=Shapes"
#   expect(page). have_content text
# end

Then(/^I should be asked a question/) do 
  
  visit "/questions/id?category=Shapes"
  save_and_open_page
  expect(page). have_content("What")
end

And (/I should see three answer choices/) do
    page.should have_content("Choices")
end




