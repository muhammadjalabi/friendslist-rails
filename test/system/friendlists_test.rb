require "application_system_test_case"

class FriendlistsTest < ApplicationSystemTestCase
  setup do
    @friendlist = friendlists(:one)
  end

  test "visiting the index" do
    visit friendlists_url
    assert_selector "h1", text: "Friendlists"
  end

  test "creating a Friendlist" do
    visit friendlists_url
    click_on "New Friendlist"

    fill_in "Email", with: @friendlist.email
    fill_in "First name", with: @friendlist.first_name
    fill_in "Last name", with: @friendlist.last_name
    fill_in "Phone", with: @friendlist.phone
    fill_in "Twitter", with: @friendlist.twitter
    click_on "Create Friendlist"

    assert_text "Friendlist was successfully created"
    click_on "Back"
  end

  test "updating a Friendlist" do
    visit friendlists_url
    click_on "Edit", match: :first

    fill_in "Email", with: @friendlist.email
    fill_in "First name", with: @friendlist.first_name
    fill_in "Last name", with: @friendlist.last_name
    fill_in "Phone", with: @friendlist.phone
    fill_in "Twitter", with: @friendlist.twitter
    click_on "Update Friendlist"

    assert_text "Friendlist was successfully updated"
    click_on "Back"
  end

  test "destroying a Friendlist" do
    visit friendlists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Friendlist was successfully destroyed"
  end
end
