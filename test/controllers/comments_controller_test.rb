require 'test_helper'
require 'factory_girl_rails'

class CommentsControllerTest < ActionController::TestCase
	test "comment_create" do  
 		user = FactoryGirl.create(:user)
 		sign_in user
    	place = FactoryGirl.create(:place, :user => user)
    	assert_difference 'place.comments.count' do
    	post :create, :place_id => place.id, :comments => {:message => 'Yeah buddy', :rating => '5_star'}
		end
     	assert_redirected_to place_path(place)

	end
end
