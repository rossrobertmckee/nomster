FactoryGirl.define do
  factory :comment do
  	message "Please work!!!"
  	rating "5_stars"
  end

  factory :email do
  	email "test@test.com"
  end
end
