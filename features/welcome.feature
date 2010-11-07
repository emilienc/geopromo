Feature: Welcome
  In order to follow my diet
  As a big guy
  I want to be simply welcome and to authenticate

Scenario: Simple welcome
  Given I am not logged in
  When I go to the homepage
  Then I should see "Bienvenue"
  And I should see "Connexion"
  And I should see "Enregistrement"
  

  



