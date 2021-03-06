require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    sign_in users(:one)
    @comment = comments(:one)
  end

  test "should get index" do
    get comments_url
    assert_response :success
  end

  test "should get new" do
    get new_comment_url
    assert_response :success
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post comments_url, params: { comment: { message: @comment.message, post_id: @comment.post_id, status: @comment.status, created_by_id: @comment.created_by_id, last_edited_by_id: @comment.last_edited_by_id } }
    end

    @post = Post.find_by_id(Comment.last.post_id)
    assert_redirected_to topic_post_path(@post.topic_id, Comment.last.post_id)
  end

  test "should show comment" do
    get comment_url(@comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_comment_url(@comment)
    assert_response :success
  end

  test "should update comment" do
    @post = Post.find_by_id(Comment.last.post_id)
    patch comment_url(@comment), params: { comment: { message: @comment.message, post_id: @comment.post_id, status: @comment.status, created_by_id: @comment.created_by_id, last_edited_by_id: @comment.last_edited_by_id } }
    assert_redirected_to topic_post_path(@post.topic_id, @post.id)
  end

  test "should destroy comment" do
    @post = Post.find_by_id(Comment.last.post_id)
    assert_difference('Comment.count', -1) do
      delete comment_url(@comment)
    end

    assert_redirected_to topic_post_path(@post.topic_id, @post.id)
  end
end
