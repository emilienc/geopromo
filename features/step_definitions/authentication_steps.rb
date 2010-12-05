

Given /^I am not authenticated$/ do
  visit('/users/sign_out') # ensure that at least
end


Given /^I am authenticated$/ do
  @user=Factory :user
  And %{I go to login}
  And %{I fill in "user_email" with "#{@user.email}"}
  And %{I fill in "user_password" with "#{@user.password}"}
  And %{I press "Connexion"}
end
