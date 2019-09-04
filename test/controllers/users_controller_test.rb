require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    @user2 = users(:two)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user when image present" do
    assert_difference('User.count') do
      post users_url, params: { user: { username: @user.username } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should create user when image not present" do
    assert_difference('User.count') do
      post users_url, params: { user: { username: @user2.username } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should not save user with no username" do
    user = User.new
    assert_not user.save, "saved user without a title"
  end

  test "should show user with no image" do
    get user_url(@user2)
    assert_response :success
  end

  test "should show user with image" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { username: @user.username } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
