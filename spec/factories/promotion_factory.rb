
Factory.define :promotion do |promo|
  promo.description      { Factory.next(:description) }
  promo.street           { Factory.next(:street) }
  promo.locality         { Factory.next(:locality) }
  promo.postal_code      { Factory.next(:postal_code) }
  promo.country          { "France" }
  promo.association      :user, :factory => :user
  promo.photo_file_name        "spec/support/rails.png"  
end

Factory.sequence :description do |n|
  "description#{n}"
end

Factory.sequence :street do |n|
  "#{n} avenue de la liberation "
end

Factory.sequence :locality do |n|
    [ "Paris", "la cadiere" ][n%2]
end

Factory.sequence :postal_code do |n|
    [ "75000", "83740" ][n%2]
end