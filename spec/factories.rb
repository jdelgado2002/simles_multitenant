FactoryGirl.define do
  factory :user do
    name     "jose delgado"
    email    "jdelgado@greetail.co"
    password "foobar"
    password_confirmation "foobar"
  end
end