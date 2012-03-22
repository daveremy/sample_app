FactoryGirl.define do
  factory :user do
    name      "Dave Remy"
    email     "email@example.com"
    password  "foobar"
    password_confirmation "foobar"
  end
end
