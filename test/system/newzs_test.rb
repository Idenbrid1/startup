require "application_system_test_case"

class NewzsTest < ApplicationSystemTestCase
  setup do
    @newz = newzs(:one)
  end

  test "visiting the index" do
    visit newzs_url
    assert_selector "h1", text: "Newzs"
  end

  test "creating a Newz" do
    visit newzs_url
    click_on "New Newz"

    fill_in "Body", with: @newz.body
    fill_in "Publish date", with: @newz.publish_date
    fill_in "Title", with: @newz.title
    click_on "Create Newz"

    assert_text "Newz was successfully created"
    click_on "Back"
  end

  test "updating a Newz" do
    visit newzs_url
    click_on "Edit", match: :first

    fill_in "Body", with: @newz.body
    fill_in "Publish date", with: @newz.publish_date
    fill_in "Title", with: @newz.title
    click_on "Update Newz"

    assert_text "Newz was successfully updated"
    click_on "Back"
  end

  test "destroying a Newz" do
    visit newzs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Newz was successfully destroyed"
  end
end
