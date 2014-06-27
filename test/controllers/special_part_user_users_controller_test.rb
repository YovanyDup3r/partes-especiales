require 'test_helper'

class SpecialPartUserUsersControllerTest < ActionController::TestCase
  setup do
    @special_part_user_user = special_part_user_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:special_part_user_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create special_part_user_user" do
    assert_difference('SpecialPartUserUser.count') do
      post :create, special_part_user_user: { like: @special_part_user_user.like, special_part_id: @special_part_user_user.special_part_id, special_part_user_id: @special_part_user_user.special_part_user_id, user_id: @special_part_user_user.user_id }
    end

    assert_redirected_to special_part_user_user_path(assigns(:special_part_user_user))
  end

  test "should show special_part_user_user" do
    get :show, id: @special_part_user_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @special_part_user_user
    assert_response :success
  end

  test "should update special_part_user_user" do
    patch :update, id: @special_part_user_user, special_part_user_user: { like: @special_part_user_user.like, special_part_id: @special_part_user_user.special_part_id, special_part_user_id: @special_part_user_user.special_part_user_id, user_id: @special_part_user_user.user_id }
    assert_redirected_to special_part_user_user_path(assigns(:special_part_user_user))
  end

  test "should destroy special_part_user_user" do
    assert_difference('SpecialPartUserUser.count', -1) do
      delete :destroy, id: @special_part_user_user
    end

    assert_redirected_to special_part_user_users_path
  end
end
