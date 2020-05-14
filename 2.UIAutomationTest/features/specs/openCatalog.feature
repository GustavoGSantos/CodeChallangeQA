#@ used before feature will run all the tests inside a feature 
@openFullCatalog
Feature: Open full product catalog

#@ is used as a nickname when you want run specifc tests
@openCatalog
Scenario: Open product catalog
  Given user is registred
  When user log in website
  Then expect user is on catalog page