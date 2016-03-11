Feature: Create Category
  As a blog administrator
  In order to organize my thoughts with the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create category
    # Given I am on the admin_dashboard page
    # And I follow "Categories"
    Given I am on the admin_categories page
    When I fill in "Name" with "Foobar"
    And I fill in "Keywords" with "Lorem Ipsum"
    And I fill in "Description" with "Lorem Ipsum category"
    And I press "Save"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Foobar"
    When I follow "Foobar"
    Then I should see "Lorem Ipsum"
