Feature: Gestion des promotions
  In order to inform my customers
  As a user
  I want to create and manage my promotions

Scenario: show only my promotions
  Given a promotion exists with description: "promotion de test"
  And I am authenticated
  When I go to the promotions page
  Then I should not see "promotion de test"

Scenario: create a promotion
  Given I am authenticated and I have created a single promotion
  When  I go to the promotions page
  Then I should see "promotion de test"


  
