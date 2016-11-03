require 'test_helper'

class TopicsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    sign_in users(:one)
    @topic = topics(:one)
  end

  test "should get index" do
    get topics_url
    assert_response :success
  end

  test "should get new" do
    get new_topic_url
    assert_response :success
  end

  test "should create topic" do
    assert_difference('Topic.count') do
      post topics_url, params: { topic: { created_by_id: @topic.created_by_id, description: @topic.description, last_edited_by_id: @topic.last_edited_by_id, title: @topic.title } }
    end

    assert_redirected_to topic_url(Topic.last)
  end

  test "should show topic" do
    get topic_url(@topic)
    assert_response :success
  end

  test "should get edit" do
    get edit_topic_url(@topic)
    assert_response :success
  end

  test "should update topic" do
    patch topic_url(@topic), params: { topic: { created_by_id: @topic.created_by_id, description: @topic.description, last_edited_by_id: @topic.last_edited_by_id, title: @topic.title } }
    assert_redirected_to topic_url(@topic)
  end

  test "should destroy topic" do
    assert_difference('Topic.count', -1) do
      delete topic_url(@topic)
    end

    assert_redirected_to topics_url
  end
end
