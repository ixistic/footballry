require 'test_helper'

class PostTypesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    sign_in users(:one)
    @post_type = post_types(:one)
  end

  test "should get index" do
    get post_types_url
    assert_response :success
  end

  test "should get new" do
    get new_post_type_url
    assert_response :success
  end

  test "should create post_type" do
    assert_difference('PostType.count') do
      post post_types_url, params: { post_type: { name: @post_type.name, created_by_id: @post_type.created_by_id, last_edited_by_id: @post_type.last_edited_by_id } }
    end

    assert_redirected_to post_type_url(PostType.last)
  end

  test "should show post_type" do
    get post_type_url(@post_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_type_url(@post_type)
    assert_response :success
  end

  test "should update post_type" do
    patch post_type_url(@post_type), params: { post_type: { name: @post_type.name, created_by_id: @post_type.created_by_id, last_edited_by_id: @post_type.last_edited_by_id } }
    assert_redirected_to post_type_url(@post_type)
  end

  test "should destroy post_type" do
    assert_difference('PostType.count', -1) do
      delete post_type_url(@post_type)
    end

    assert_redirected_to post_types_url
  end
end
