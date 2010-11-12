
Factory.define :promotion do |promotion|
  promotion.description      { Factory.next(:description) }
  promotion.street           { Factory.next(:street) }
  promotion.locality         { Factory.next(:locality) }
  promotion.postal_code      { Factory.next(:postal_code) }
  promotion.country          { "France" }
  promotion.association :user, :factory => :user
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