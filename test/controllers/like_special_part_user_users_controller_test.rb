require 'test_helper'

class LikeSpecialPartUserUsersControllerTest < ActionController::TestCase
  setup do
    @like_special_part_user_user = like_special_part_user_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:like_special_part_user_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create like_special_part_user_user" do
    assert_difference('LikeSpecialPartUserUser.count') do
      post :create, like_special_part_user_user: { church_id: @like_special_part_user_user.church_id, like: @like_special_part_user_user.like, special_part_id: @like_special_part_user_user.special_part_id, user_id: @like_special_part_user_user.user_id }
    end

    assert_redirected_to like_special_part_user_user_path(assigns(:like_special_part_user_user))
  end

  test "should show like_special_part_user_user" do
    get :show, id: @like_special_part_user_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @like_special_part_user_user
    assert_response :success
  end

  test "should update like_special_part_user_user" do
    patch :update, id: @like_special_part_user_user, like_special_part_user_user: { church_id: @like_special_part_user_user.church_id, like: @like_special_part_user_user.like, special_part_id: @like_special_part_user_user.special_part_id, user_id: @like_special_part_user_user.user_id }
    assert_redirected_to like_special_part_user_user_path(assigns(:like_special_part_user_user))
  end

  test "should destroy like_special_part_user_user" do
    assert_difference('LikeSpecialPartUserUser.count', -1) do
      delete :destroy, id: @like_special_part_user_user
    end

    assert_redirected_to like_special_part_user_users_path
  end
end
