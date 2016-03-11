Feature: Create Category
  As a blog administrator
  In order to organize my thoughts with the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create category
    Given I am on the admin_categories page
    When I fill in "Name" with "Hiking"
    And I fill in "Keywords" with "Hike, Hiking, Mountains"
    And I fill in "Description" with "For all things related to hiking."
    And I press "Save"
    Then I should see "Hiking"
    And I fill in "Keywords" with "Hike, Hiking, Mountains"
    And I fill in "Description" with "For all things related to hiking."
