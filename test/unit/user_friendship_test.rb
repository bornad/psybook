require 'test_helper'

class UserFriendshipTest < ActiveSupport::TestCase
	should belong_to(:user)
	should belong_to(:friend)

	test "that creating a friendship works without raising an exeception" do
	  assert_nothing_raised do
		UserFriendship.create user: users(:jason), friend: users(:mike)
      end
   end
    test "is friendship based on id" do
     UserFriendship.create user_id: users(:jason).id, friend_id: users(:mike).id
     assert users(:jason).friends.include?(users(:mike))
    end
end
