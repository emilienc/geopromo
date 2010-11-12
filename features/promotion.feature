Feature: Gestion des promotions
  In order to inform my customers
  As a user
  I want to create and manage my promotions

Scenario: show promotion
  Given a promotion exists with description: "promotion de test"
  And I log in successfully
  When I go to the promotions page
  Then I should see "promotion de test"


  
