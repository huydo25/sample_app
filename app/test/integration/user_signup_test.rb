require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest
 
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name:  "huy",
                                         email: "user@invalid.com",
                                         password:              "12123345",
                                         password_confirmation: "12123345" } }
    end
    assert_template 'users/new'
    assert_select 'div#<CSS id for error explanation>'
    assert_select 'div.<CSS class for field with error>'
  end
end
