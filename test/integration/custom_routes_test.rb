require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
 test "that /login route opens the lodin page" do
 	get '/login'
 	assert_response :success
 end
end
