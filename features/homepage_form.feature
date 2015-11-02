Feature: Display the Homepage
    As a parent/guardian
    So that the child can play the game
    I want to visit the Game 101 homepage
  
Given I am on the Game 101 homepage

Scenario: Viewing the homepage
    Given I am on the Game 101 homepage
    Then I should see "Welcome to our Site"
    And I should see a link "View all categories"
