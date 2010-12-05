Feature: Authentication
  In order to trust this great site
  As a User
  I want to subscribe,login and logout

  
Scenario: Creating a new account
    Given I am not authenticated
    When I go to register # define this path mapping in features/support/paths.rb, usually as '/users/sign_up'
    And I fill in "user_email" with "user@domain.com"
    And I fill in "user_password" with "password"
    And I fill in "user_password_confirmation" with "password"
    And I press "Enregistrement"
    Then I should see "Signed in as"

Scenario: Sign in
  Given I am authenticated
  Then I should see "Signed in as"

Scenario: Sign out
  Given I am authenticated
  When I go to logout
  Then I should see "Signed out"