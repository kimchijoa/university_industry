require 'test_helper'

class AlramTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alram_test = alram_tests(:one)
  end

  test "should get index" do
    get alram_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_alram_test_url
    assert_response :success
  end

  test "should create alram_test" do
    assert_difference('AlramTest.count') do
      post alram_tests_url, params: { alram_test: { desc: @alram_test.desc, title: @alram_test.title, user_id: @alram_test.user_id } }
    end

    assert_redirected_to alram_test_url(AlramTest.last)
  end

  test "should show alram_test" do
    get alram_test_url(@alram_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_alram_test_url(@alram_test)
    assert_response :success
  end

  test "should update alram_test" do
    patch alram_test_url(@alram_test), params: { alram_test: { desc: @alram_test.desc, title: @alram_test.title, user_id: @alram_test.user_id } }
    assert_redirected_to alram_test_url(@alram_test)
  end

  test "should destroy alram_test" do
    assert_difference('AlramTest.count', -1) do
      delete alram_test_url(@alram_test)
    end

    assert_redirected_to alram_tests_url
  end
end
