require 'test_helper'

class MusicTypesControllerTest < ActionController::TestCase
  setup do
    @music_type = music_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:music_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create music_type" do
    assert_difference('MusicType.count') do
      post :create, music_type: { name: @music_type.name }
    end

    assert_redirected_to music_type_path(assigns(:music_type))
  end

  test "should show music_type" do
    get :show, id: @music_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @music_type
    assert_response :success
  end

  test "should update music_type" do
    patch :update, id: @music_type, music_type: { name: @music_type.name }
    assert_redirected_to music_type_path(assigns(:music_type))
  end

  test "should destroy music_type" do
    assert_difference('MusicType.count', -1) do
      delete :destroy, id: @music_type
    end

    assert_redirected_to music_types_path
  end
end
