require 'test_helper'

class SpecialPartUsersControllerTest < ActionController::TestCase
  setup do
    @special_part_user = special_part_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:special_part_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create special_part_user" do
    assert_difference('SpecialPartUser.count') do
      post :create, special_part_user: { comment: @special_part_user.comment, special_part_id: @special_part_user.special_part_id, user_id: @special_part_user.user_id }
    end

    assert_redirected_to special_part_user_path(assigns(:special_part_user))
  end

  test "should show special_part_user" do
    get :show, id: @special_part_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @special_part_user
    assert_response :success
  end

  test "should update special_part_user" do
    patch :update, id: @special_part_user, special_part_user: { comment: @special_part_user.comment, special_part_id: @special_part_user.special_part_id, user_id: @special_part_user.user_id }
    assert_redirected_to special_part_user_path(assigns(:special_part_user))
  end

  test "should destroy special_part_user" do
    assert_difference('SpecialPartUser.count', -1) do
      delete :destroy, id: @special_part_user
    end

    assert_redirected_to special_part_users_path
  end
end
