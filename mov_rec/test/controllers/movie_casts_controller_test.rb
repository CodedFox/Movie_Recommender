require 'test_helper'

class MovieCastsControllerTest < ActionController::TestCase
  setup do
    @movie_cast = movie_casts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movie_casts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie_cast" do
    assert_difference('MovieCast.count') do
      post :create, movie_cast: {  }
    end

    assert_redirected_to movie_cast_path(assigns(:movie_cast))
  end

  test "should show movie_cast" do
    get :show, id: @movie_cast
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie_cast
    assert_response :success
  end

  test "should update movie_cast" do
    patch :update, id: @movie_cast, movie_cast: {  }
    assert_redirected_to movie_cast_path(assigns(:movie_cast))
  end

  test "should destroy movie_cast" do
    assert_difference('MovieCast.count', -1) do
      delete :destroy, id: @movie_cast
    end

    assert_redirected_to movie_casts_path
  end
end
