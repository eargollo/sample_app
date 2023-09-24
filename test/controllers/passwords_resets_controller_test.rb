require "test_helper"

class PasswordsResetsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
    @user.create_reset_digest
  end

  test "should get new" do
    get passwords_resets_new_url
    assert_response :success
  end

  test "should get edit" do
    get passwords_resets_edit_url
    # assert_response :success
  end

end
