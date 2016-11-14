require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    sign_in users(:one)
    @post = posts(:one)
    @topic = topics(:one)
  end

  test "should get index" do
    get topic_posts_path(@topic)
    assert_response :success
  end

  test "should get new" do
    get new_topic_post_path(@topic)
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post topic_posts_path(@topic), params: { post: { body: @post.body, created_by_id: @post.created_by_id, last_edited_by_id: @post.last_edited_by_id, post_type_id: @post.post_type_id, status: @post.status, title: @post.title, topic_id: @topic.id } }
    end

    assert_redirected_to topic_post_path(@topic, Post.last)
  end

  test "should show post" do
    get topic_post_path(@topic, @post)
    assert_response :success
  end

  test "should get edit" do
    get edit_topic_post_path(@topic, @post)
    assert_response :success
  end

  test "should update post" do
    patch topic_post_path(@topic, @post), params: { post: { body: @post.body, created_by_id: @post.created_by_id, last_edited_by_id: @post.last_edited_by_id, post_type_id: @post.post_type_id, status: @post.status, title: @post.title, topic_id: @topic.id } }
    assert_redirected_to topic_post_path(@topic, @post)
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete topic_post_path(@topic, @post)
    end

    assert_redirected_to topic_posts_path
  end
end
