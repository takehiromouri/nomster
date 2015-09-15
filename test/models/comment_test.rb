require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "ratings" do
  	comment = Comment.new(:rating => '1_star')
  	expected = 'one star'
  	actual = comment.humanized_rating 
  	assert_equal expected, actual

  end

end
