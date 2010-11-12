Feature: Geopromo
  In order to make good deals
  As a user
  I want to see all available promos near me

  
Scenario: Available promos near me
  Given some promotions exists closed and far to me
  When I ask for promotions near me
  Then I see only promotions closed to me


