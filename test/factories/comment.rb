FactoryGirl.define do
  factory :comment do
  	# message "Please work!!!"
  	# rating "5_stars"
  	association :place 
  	association :user
end
end