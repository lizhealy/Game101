Given /the following shapes exist/ do
  all_shapes = Question.all
  all_rows = 3
  if all_shapes.size == all_rows
    all_shapes.each do |shape|
      assert page.body =~ /#{question.shape}/m
    end
  else
    false
  end
end

When /I check the checkbox/ do 
  check(find("input[type='checkbox']")[:id])
end

Then /the checkbox should be checked/ do
  find_field(id)[:value].should eq "true"
end


Then /I should see feedback/ do 
  page.should have_content("Correct" || "Incorrect")
end

When /I press "Submit"/ do |submit_answer|
  click_button(submit_answer)
end




