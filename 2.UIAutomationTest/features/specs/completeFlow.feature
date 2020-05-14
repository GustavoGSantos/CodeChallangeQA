@completeFlow
Feature: Complete flow 

Scenario: Complete flow 
  Given user is registred
  When user log in website
  And open a product page
  And buy some unities
  Then expect a cart preview with the button to finish your order