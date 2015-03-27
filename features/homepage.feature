
Feature: Home Page



  Scenario: I want to log on to contact centre
   Given I log on to contact centre
   Then I should see the correct elements

   Scenario: User is able to log out
    Given I log on to contact centre
    And the page should have content "New Enquiry form"
    Then I am able to log out

  Scenario: User is able to log out
    Given I log on to contact centre
    And I click the "admin" link
    Then I should see the admin options menu
  @current
  Scenario: click on drop list
    Given I log on to contact centre
    And I click on the call to drop down list box



