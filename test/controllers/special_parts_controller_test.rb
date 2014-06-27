require 'test_helper'

class SpecialPartsControllerTest < ActionController::TestCase
  setup do
    @special_part = special_parts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:special_parts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create special_part" do
    assert_difference('SpecialPart.count') do
      post :create, special_part: { audio_url: @special_part.audio_url, church_id: @special_part.church_id, user_id: @special_part.user_id, video_url: @special_part.video_url }
    end

    assert_redirected_to special_part_path(assigns(:special_part))
  end

  test "should show special_part" do
    get :show, id: @special_part
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @special_part
    assert_response :success
  end

  test "should update special_part" do
    patch :update, id: @special_part, special_part: { audio_url: @special_part.audio_url, church_id: @special_part.church_id, user_id: @special_part.user_id, video_url: @special_part.video_url }
    assert_redirected_to special_part_path(assigns(:special_part))
  end

  test "should destroy special_part" do
    assert_difference('SpecialPart.count', -1) do
      delete :destroy, id: @special_part
    end

    assert_redirected_to special_parts_path
  end
end
