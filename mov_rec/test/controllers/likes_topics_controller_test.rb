require 'test_helper'

class LikesTopicsControllerTest < ActionController::TestCase
  setup do
    @likes_topic = likes_topics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:likes_topics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create likes_topic" do
    assert_difference('LikesTopic.count') do
      post :create, likes_topic: { profile_id: @likes_topic.profile_id, topic_id: @likes_topic.topic_id }
    end

    assert_redirected_to likes_topic_path(assigns(:likes_topic))
  end

  test "should show likes_topic" do
    get :show, id: @likes_topic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @likes_topic
    assert_response :success
  end

  test "should update likes_topic" do
    patch :update, id: @likes_topic, likes_topic: { profile_id: @likes_topic.profile_id, topic_id: @likes_topic.topic_id }
    assert_redirected_to likes_topic_path(assigns(:likes_topic))
  end

  test "should destroy likes_topic" do
    assert_difference('LikesTopic.count', -1) do
      delete :destroy, id: @likes_topic
    end

    assert_redirected_to likes_topics_path
  end
end
