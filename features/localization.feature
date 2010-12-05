Feature: Localization
  In order to understand the web site
  As a french user
  I want to access the site in french

  
Scenario: bienvenue
  Given I am not authenticated
  When I go to the homepage
  Then I should see "Bienvenue sur Geopromo"
  Then I should see "Enregistrement ou Connexion"

Scenario: connexion
  Given I am not authenticated
  When I go to the login page
  Then I should see "Connexion"
  Then I should see "Mot de passe"
  Then I should see "Enregistrement"

Scenario: enregistrement
  Given I am not authenticated
  When I go to the register page
  Then I should see "Enregistrement"
  Then I should see "Mot de passe"
  Then I should see "Confirmation du mot de passe"
