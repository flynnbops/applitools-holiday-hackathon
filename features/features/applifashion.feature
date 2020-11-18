@applifashion
Feature: Applifashion shopping site

  Scenario: Homepage
    Given I am on the Applifashion homepage
    Then the homepage looks correct

  Scenario: Filter by colour black
    Given I am on the Applifashion homepage
    When I filter products by colour black
    Then the filtered results page looks correct
