Then /^I should be simply welcome$/ do
  page.should have_content "Bienvenue"
  page.should have_content "Connexion"
  page.should have_content "Enregistrement"
  page.should have_content "promotions"
end

