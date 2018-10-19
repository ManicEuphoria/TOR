require 'test_helper'

class MicroPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @micro_post = micro_posts(:one)
  end

  test "should get index" do
    get micro_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_micro_post_url
    assert_response :success
  end

  test "should create micro_post" do
    assert_difference('MicroPost.count') do
      post micro_posts_url, params: { micro_post: { content: @micro_post.content, user_id: @micro_post.user_id } }
    end

    assert_redirected_to micro_post_url(MicroPost.last)
  end

  test "should show micro_post" do
    get micro_post_url(@micro_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_micro_post_url(@micro_post)
    assert_response :success
  end

  test "should update micro_post" do
    patch micro_post_url(@micro_post), params: { micro_post: { content: @micro_post.content, user_id: @micro_post.user_id } }
    assert_redirected_to micro_post_url(@micro_post)
  end

  test "should destroy micro_post" do
    assert_difference('MicroPost.count', -1) do
      delete micro_post_url(@micro_post)
    end

    assert_redirected_to micro_posts_url
  end
end
