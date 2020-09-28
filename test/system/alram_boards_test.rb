require "application_system_test_case"

class AlramBoardsTest < ApplicationSystemTestCase
  setup do
    @alram_board = alram_boards(:one)
  end

  test "visiting the index" do
    visit alram_boards_url
    assert_selector "h1", text: "Alram Boards"
  end

  test "creating a Alram board" do
    visit alram_boards_url
    click_on "New Alram Board"

    fill_in "Board", with: @alram_board.board_id
    fill_in "User", with: @alram_board.user_id
    click_on "Create Alram board"

    assert_text "Alram board was successfully created"
    click_on "Back"
  end

  test "updating a Alram board" do
    visit alram_boards_url
    click_on "Edit", match: :first

    fill_in "Board", with: @alram_board.board_id
    fill_in "User", with: @alram_board.user_id
    click_on "Update Alram board"

    assert_text "Alram board was successfully updated"
    click_on "Back"
  end

  test "destroying a Alram board" do
    visit alram_boards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alram board was successfully destroyed"
  end
end
