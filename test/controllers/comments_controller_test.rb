require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

 #  test "comment_create" do
 #  	user = FactoryGirl.create(:user)
 #  	sign_in user
 #  	place = FactoryGirl.create(:place, :user => user)
 #    comment = FactoryGirl.create(:comment, user: user, place: place)


 #  	assert_difference 'Comment.count' do
 #  		post :create, :place_id => place.id, :comment => {
 #  			:message => 'hey',
 #  			:rating => '1_star'
 #  			}
 #  		end
	# 	assert_redirect_to places_path
	# 	assert_equal 1, user.places.comments.count
	# end

  test "comment_create" do  
      user = FactoryGirl.create(:user)
      sign_in user
      place = FactoryGirl.create(:place, :user => user)
      assert_difference 'Comment.count' do
        post :create, :place_id => place.id, :comment => {:message => 'awesome!', :rating => '1_star'}
      end
      assert_redirected_to place_path(place)
  end
end
