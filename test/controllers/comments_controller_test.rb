require 'test_helper'
require 'factory_girl_rails'

class CommentsControllerTest < ActionController::TestCase
	test "comment_create" do  
 		user = FactoryGirl.create(:user)
 		sign_in user
    	place = FactoryGirl.create(:place)
		comment = FactoryGirl.create(:comment, place: place)
    	assert_not_nil comment    
    	assert_redirected_to place_path(place)
  end

end
