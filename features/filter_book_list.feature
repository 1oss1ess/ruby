Feature: display list of books filtered by MPAA genre
 
  As a concerned parent
  So that I can quickly browse books appropriate for my family
  I want to see books matching only certain MPAA genres
 
Background: books have been added to database
 
  Given the following books exist:
  | title                   | genre                | publish_date |
  | Poor Kids               | Drama                | 25-Nov-1992  |
  | Programing With JAVA    | Science-fiction      | 26-Oct-1994  |
  | Game Of Thrones         | Drama                | 21-Jul-2005  |
  | The Notebook            | Romance              | 10-Aug-2011  |
  | Ghouls                  | Horror               | 5-Jan-2001   |
  | Programing With C#      | Science-fiction      | 25-Apr-2005  |
  | Romeo                   | Drama                | 6-Apr-1968   |
  | IT                      | Horror               | 5-Nov-2004   |
  | Pride and Prejudice     | Romance              | 12-Jun-1981  |
  | Twilight                | Romance              | 21-Jun-2000  |
 
  And  I am on the FavouriteBooks home page
  Then 10 seed books should exist
 
Scenario: restrict to books with 'Science-fiction' or 'Romance' genres
  When I check the following genres: Science-fiction, Romance
  And  I uncheck the following genres: Drama, Horror
  And  I press "Refresh"

  Then  I should see "Programing With JAVA"
  And  I should see "Programing With C#"
  And  I should see "The Notebook"
  And  I should see "Pride and Prejudice"
  And  I should see "Twilight"
 
  And  I should not see "Game Of Thrones"
  And  I should not see "Ghouls"
  And  I should not see "Romeo"
  And  I should not see "IT"
 
Scenario: all genres selected
  When I check the following genres: Drama, Romance, Horror, Science-fiction
  And  I press "Refresh"
  Then I should see all the books