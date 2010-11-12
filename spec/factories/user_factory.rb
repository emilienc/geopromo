Factory.define :user do |user|
  user.email                 { "test@toto.com" }
  user.password              { "password"   }
  user.password_confirmation { "password"   }
end