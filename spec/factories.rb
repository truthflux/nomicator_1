FactoryGirl.define do
  factory :user do
    name     "Captain Haddock"
    email    "Haddock@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end