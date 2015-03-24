
Feature: Home Page



  Scenario: I want to log on to contact centre
   Given I log on to contact centre
   Then I should see the correct elements
  @current
  Scenario: User is able to log out
    Given I log on to contact centre
    Then I am able to log out
