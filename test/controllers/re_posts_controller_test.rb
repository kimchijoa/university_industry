require 'test_helper'

class RePostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @re_post = re_posts(:one)
  end

  test "should get index" do
    get re_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_re_post_url
    assert_response :success
  end

  test "should create re_post" do
    assert_difference('RePost.count') do
      post re_posts_url, params: { re_post: { alram_test_id: @re_post.alram_test_id, comment: @re_post.comment, user_id: @re_post.user_id } }
    end

    assert_redirected_to re_post_url(RePost.last)
  end

  test "should show re_post" do
    get re_post_url(@re_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_re_post_url(@re_post)
    assert_response :success
  end

  test "should update re_post" do
    patch re_post_url(@re_post), params: { re_post: { alram_test_id: @re_post.alram_test_id, comment: @re_post.comment, user_id: @re_post.user_id } }
    assert_redirected_to re_post_url(@re_post)
  end

  test "should destroy re_post" do
    assert_difference('RePost.count', -1) do
      delete re_post_url(@re_post)
    end

    assert_redirected_to re_posts_url
  end
end
