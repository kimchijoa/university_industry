require "application_system_test_case"

class AlramTestsTest < ApplicationSystemTestCase
  setup do
    @alram_test = alram_tests(:one)
  end

  test "visiting the index" do
    visit alram_tests_url
    assert_selector "h1", text: "Alram Tests"
  end

  test "creating a Alram test" do
    visit alram_tests_url
    click_on "New Alram Test"

    fill_in "Desc", with: @alram_test.desc
    fill_in "Title", with: @alram_test.title
    fill_in "User", with: @alram_test.user_id
    click_on "Create Alram test"

    assert_text "Alram test was successfully created"
    click_on "Back"
  end

  test "updating a Alram test" do
    visit alram_tests_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @alram_test.desc
    fill_in "Title", with: @alram_test.title
    fill_in "User", with: @alram_test.user_id
    click_on "Update Alram test"

    assert_text "Alram test was successfully updated"
    click_on "Back"
  end

  test "destroying a Alram test" do
    visit alram_tests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alram test was successfully destroyed"
  end
end
