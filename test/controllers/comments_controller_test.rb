require 'test_helper'
require 'factory_girl_rails'

class CommentsControllerTest < ActionController::TestCase
	

	test "comment_create" do  
 		user = FactoryGirl.create(:user)
 		sign_in user
    	place = FactoryGirl.create(:place)
		comment = FactoryGirl.create(:comment, user: user, place: place)
    	assert_equal 1, place.comment.count    
    	assert_redirected_to places_path(place)
  end

end
