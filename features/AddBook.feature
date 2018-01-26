Feature: User can manually add book
 
Scenario: Add a book
    Given I am on the FavouriteBooks home page
    When I follow "Add new book"
    Then I should be on the Create New Book page
    When I fill in "Title" with "Fools Die"
    And I select "Drama" from "Genre"
    And I press "Save Changes"
    Then I should be on the FavouriteBooks home page
    And I should see "Fools Die"