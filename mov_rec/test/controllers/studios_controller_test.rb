require 'test_helper'

class StudiosControllerTest < ActionController::TestCase
  setup do
    @studio = studios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studio" do
    assert_difference('Studio.count') do
      post :create, studio: { country: @studio.country, studio_name: @studio.studio_name }
    end

    assert_redirected_to studio_path(assigns(:studio))
  end

  test "should show studio" do
    get :show, id: @studio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @studio
    assert_response :success
  end

  test "should update studio" do
    patch :update, id: @studio, studio: { country: @studio.country, studio_name: @studio.studio_name }
    assert_redirected_to studio_path(assigns(:studio))
  end

  test "should destroy studio" do
    assert_difference('Studio.count', -1) do
      delete :destroy, id: @studio
    end

    assert_redirected_to studios_path
  end
end
