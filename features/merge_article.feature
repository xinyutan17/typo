# A non-admin cannot merge articles.
# When articles are merged, the merged article should contain the text of both previous articles.
# When articles are merged, the merged article should have one author (either one of the authors of the original article).
# Comments on each of the two original articles need to all carry over and point to the new, merged article.
# The title of the new article should be the title from either one of the merged articles.

Feature: Merge Article
  As a blog administrator
  In order to combine similar articles
  I want to be able to merge two articles by article id

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
    Given the following articles exist:
    | title  | body          |
    | Hi     | Hello World   |
    | Bye    | Goodbye World |

  Scenario: Merge article button present
    Given I am on the edit admin_content page
    Then I should see "Merge Articles"

  Scenario: Successfully create category
    Given I am on the admin_categories page
    When I fill in "Name" with "Hiking"
    And I fill in "Keywords" with "Hike, Hiking, Mountains"
    And I fill in "Description" with "For all things related to hiking."
    And I press "Save"
    Then I should see "Hiking"
    And I fill in "Keywords" with "Hike, Hiking, Mountains"
    And I fill in "Description" with "For all things related to hiking."
    
  Scenario: Successfully write articles
    Given I am on the new article page
    When I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
    Given I am on the new article page
    When I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
