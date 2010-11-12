

Given /^I am not authenticated$/ do
  visit('/users/sign_out') # ensure that at least
end

Given /^I log in successfully$/ do
  @user = User.first
  And %{I go to login}
  And %{I fill in "user_email" with "test@toto.com"}
  And %{I fill in "user_password" with "password"}
  And %{I press "Sign in"}
end

Given /^I am authenticated$/ do
  @user=Factory :user
  And %{I go to login}
  And %{I fill in "user_email" with "#{@user.email}"}
  And %{I fill in "user_password" with "#{@user.password}"}
  And %{I press "Sign in"}
end
