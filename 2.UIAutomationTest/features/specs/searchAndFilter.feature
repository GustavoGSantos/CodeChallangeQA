@searchAndFilter
Feature: Validate filters and catalog search

@searchProduct
Scenario: Use search to find some product
    Given user is registred
    When user log in website
    And click on search
    And insert a product name to search
    Then expect the search return the correct product

@searchFailed
Scenario: Search for a non existent product
    Given user is registred
    When user log in website
    And click on search
    And insert a non existent product name to search
    Then expect the search return an error messagem

@filterByOneCategory
Scenario: Select one category filter
    Given user is registred
    When user log in website
    And click on a category
    Then expect user is redirect to this catalog

@filterByTwoCategories
Scenario: Select one category after select another category
    Given user is registred
    When user log in website
    And click on a category
    And click on other category
    Then expect catalog update to the new category
