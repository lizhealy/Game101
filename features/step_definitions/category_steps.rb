Given /the following categories exist/ do |questions_table|
  questions_table.hashes.each do |category|
    Question.create!(category)
  end
end

Then /I should see all of the categories/ do
    visit "/questions/index"
    all_categories = Question.all
#   expect(page).to have_link("Questions on Shapes", visible: false)
    expect(page).to have_text("All Categories")
end

When (/^I click "([^"]*)"$/) do |element|
  # visit "/questions/id?category=Shapes&id=selected_shapes"
  %{I click (element)}  
end

Then /^I pause for a while$/ do 
    sleep 3
end

Then /I print/ do
    print page.html
end

# Then(/^a question should be asked such as "([^"]*)"$/) do |text|
#   visit "/questions/id?category=Shapes&id=Shapes"
#   expect(page). have_content text
# end

Then(/^I should be asked a question/) do 
  # @question = Question.all
   visit "/questions/"
   all_categories = Question.all
  click_link "Questions on Shapes"
  expect(page).to have_content("What")

  
end

And (/I should see three answer choices/) do
    page.should have_content("Choices")
end




