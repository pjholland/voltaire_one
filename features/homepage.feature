
Feature: Home Page

  Scenario: I want to visit the home page
    Given I am on the home page

  @current
  Scenario: I want to find my nearest store
    Given I am on the home page
    When i click on the store finder link
    And I enter my local store details
    Then I will see my local store details