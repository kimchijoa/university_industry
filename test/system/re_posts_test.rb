require "application_system_test_case"

class RePostsTest < ApplicationSystemTestCase
  setup do
    @re_post = re_posts(:one)
  end

  test "visiting the index" do
    visit re_posts_url
    assert_selector "h1", text: "Re Posts"
  end

  test "creating a Re post" do
    visit re_posts_url
    click_on "New Re Post"

    fill_in "Alram test", with: @re_post.alram_test_id
    fill_in "Comment", with: @re_post.comment
    fill_in "User", with: @re_post.user_id
    click_on "Create Re post"

    assert_text "Re post was successfully created"
    click_on "Back"
  end

  test "updating a Re post" do
    visit re_posts_url
    click_on "Edit", match: :first

    fill_in "Alram test", with: @re_post.alram_test_id
    fill_in "Comment", with: @re_post.comment
    fill_in "User", with: @re_post.user_id
    click_on "Update Re post"

    assert_text "Re post was successfully updated"
    click_on "Back"
  end

  test "destroying a Re post" do
    visit re_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Re post was successfully destroyed"
  end
end
