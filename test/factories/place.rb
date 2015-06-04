FactoryGirl.define do
  factory :place do
  	name "Chicago, IL"
  	address "Chicago, IL"
  	description "Better than Wisconsin"
  	association :user
  end
end