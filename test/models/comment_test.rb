require 'test_helper'

class CommentTest < ActiveSupport::TestCase
 	setup do 
 		user = FactoryGirl.create(:user)
    	place = FactoryGirl.create(:place, user: user)
    	@comment = FactoryGirl.create(:comment, user: user, place: place)
 	end

    test "comment_made" do
  	assert_not_nil @comment 
  end

  test "humanized_rating" do
  	@comment.update_attributes(:rating => '1_star')
  	assert_equal @comment.humanized_rating, 'one star'
  end

end
