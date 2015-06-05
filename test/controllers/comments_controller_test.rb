require 'test_helper'
require 'factory_girl_rails'

class CommentsControllerTest < ActionController::TestCase
	test "comment_create" do  
 		user = FactoryGirl.create(:user)
 		sign_in user
    	place = FactoryGirl.create(:place, :user => user)
		comment = FactoryGirl.create(:comment, user: user, place: place)
     	assert_redirected_to place_path(place)
    	assert_not_nil comment    
	end
end
