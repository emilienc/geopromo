Factory.define :promotion do |promotion|
  promotion.description      { "description" }
  promotion.street           { "champs elysees" }
  promotion.locality           { "Paris" }
  promotion.postal_code           { "75000" }
  promotion.country          { "France" }
  promotion.association :user, :factory => :user
end