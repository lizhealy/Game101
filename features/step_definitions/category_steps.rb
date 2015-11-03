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

Then /I print/ do
    print page.html
end


And (/I should see three answer choices/) do
    expect(page).to have_content("Choices")
end

And (/I should see a button for "([^"]*)"$/) do |button|
    expect(page).to have_button(button)
end


And (/I should see a link "([^"]*)"$/) do |link|
  expect(page).to have_link(link)
end

Then /^I pause for a while$/ do 
    sleep 3
end