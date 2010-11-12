Feature: Welcome
  In order to improve my business
  As a entrepreneur
  I want to be simply welcome, and to log or to register

Scenario: Simple welcome
  Given I am not authenticated
  When I go to the homepage
  Then I should be simply welcome
  
Scenario: Already logged
  Given I am authenticated
  When I go to the homepage
  Then I should see "Deconnexion"





