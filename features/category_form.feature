Feature: Display list of categories
    As a parent/guardian
    So that the child can play the game
    I want to select the game category

Background: questions have been added to database

    Given the following categories exist:
    | category   | prompt               | answer   |  
    | Shapes     | What shape is this?  | circle   |
    | Shapes     | What shape is this?  | triangle |
    | Shapes     | What shape is this?  | square   |
    | Animals    | What animal is this? | dog      | 
    | Animals    | What animal is this? | cat      |
    | Animals    | What animal is this? | fish     |
    | Colors     | What color is this?  | blue     | 
    | Colors     | What color is this?  | pink     |
    | Colors     | What color is this?  | green    |
    
    And I am on the Game 101 homepage

Scenario: Viewing all categories
    Given I am on the Game 101 homepage
    And I follow "View all categories"
    Then I should see a link "Questions on Shapes"
    And I should see a link "Questions on Colors"
    And I should see a link "Questions on Animals"


Scenario: Select the animal category
    Given I am on the categories page
    Then I should see "All Categories"
    When I follow "Questions on Animals"
    Then I should see "What animal is this?"
    And I should see three answer choices
    And I should see a button for "Submit"
    
    
Scenario: Select the shapes category
    Given I am on the categories page
    Then I should see "All Categories"
    When I follow "Questions on Shapes"
    Then I should see "What shape is this?"
    And I should see three answer choices
    And I should see a button for "Submit"
    
    
Scenario: Select the colors category
    Given I am on the categories page
    Then I should see "All Categories"
    When I follow "Questions on Colors"
    Then I should see "What color is this?"
    And I should see three answer choices
    And I should see a button for "Submit"
    
    