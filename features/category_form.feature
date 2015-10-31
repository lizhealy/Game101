Feature: Display list of categories
    As a parent/guardian
    So that the child can play the game
    I want to select the game category

# Given I am on the Game101 Website
# And the following categories exist:
Background: questions have been added to database
  
    Given the following categories exist:
    | Shapes |
    | Animals |
    | Colors | 
    
    And I am on the categories page

Scenario: Viewing all categories
    Given I am on the categories page
    Then I should see "All Categories"

Scenario: Select a category
    When I am on the categories page
    # Then I print
    Then I should see "All Categories"
    Then I print
    When I click "Questions on Shapes"
    # Then I print
    # Then I should be asked a question
#     And I should see three answer choices