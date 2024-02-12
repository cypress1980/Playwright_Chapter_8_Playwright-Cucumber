Feature: Login Functionality
  Background:
    Given Open the URL
  @smoke
  Scenario: Login Functionality for site https://www.saucedemo.com/
    When User enter the username "<username>" and password "<password>"
    And User click on login button
    Then User logged in successfully
    When User click on HamburgerMenu
    And Logout from the site
     Then User should be in login page

    Examples:
      | username      | password     |
      | standard_user | secret_sauce |