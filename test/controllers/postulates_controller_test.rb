require 'test_helper'

class PostulatesControllerTest < ActionController::TestCase
  setup do
    @postulate = postulates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postulates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postulate" do
    assert_difference('Postulate.count') do
      post :create, postulate: { church_id: @postulate.church_id, date: @postulate.date, music_name: @postulate.music_name, music_type_id: @postulate.music_type_id, user_id: @postulate.user_id }
    end

    assert_redirected_to postulate_path(assigns(:postulate))
  end

  test "should show postulate" do
    get :show, id: @postulate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postulate
    assert_response :success
  end

  test "should update postulate" do
    patch :update, id: @postulate, postulate: { church_id: @postulate.church_id, date: @postulate.date, music_name: @postulate.music_name, music_type_id: @postulate.music_type_id, user_id: @postulate.user_id }
    assert_redirected_to postulate_path(assigns(:postulate))
  end

  test "should destroy postulate" do
    assert_difference('Postulate.count', -1) do
      delete :destroy, id: @postulate
    end

    assert_redirected_to postulates_path
  end
end
