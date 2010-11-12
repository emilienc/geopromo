Given /^I am authenticated and I have created a single promotion$/ do
  @user=Factory :user
  And %{I go to login}
  And %{I fill in "user_email" with "#{@user.email}"}
  And %{I fill in "user_password" with "#{@user.password}"}
  And %{I press "Sign in"}
  @promotion = Factory :promotion, :user =>@user, :description=>"promotion de test"
end


