require 'test_helper'

class AlramBoardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alram_board = alram_boards(:one)
  end

  test "should get index" do
    get alram_boards_url
    assert_response :success
  end

  test "should get new" do
    get new_alram_board_url
    assert_response :success
  end

  test "should create alram_board" do
    assert_difference('AlramBoard.count') do
      post alram_boards_url, params: { alram_board: { board_id: @alram_board.board_id, user_id: @alram_board.user_id } }
    end

    assert_redirected_to alram_board_url(AlramBoard.last)
  end

  test "should show alram_board" do
    get alram_board_url(@alram_board)
    assert_response :success
  end

  test "should get edit" do
    get edit_alram_board_url(@alram_board)
    assert_response :success
  end

  test "should update alram_board" do
    patch alram_board_url(@alram_board), params: { alram_board: { board_id: @alram_board.board_id, user_id: @alram_board.user_id } }
    assert_redirected_to alram_board_url(@alram_board)
  end

  test "should destroy alram_board" do
    assert_difference('AlramBoard.count', -1) do
      delete alram_board_url(@alram_board)
    end

    assert_redirected_to alram_boards_url
  end
end
