FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "factorygirl#{n}@gmail.com"
end
    password "girlfactory"
    password_confirmation "girlfactory"
  end
end

