require "application_system_test_case"

class PresssesTest < ApplicationSystemTestCase
  setup do
    @presss = pressses(:one)
  end

  test "visiting the index" do
    visit pressses_url
    assert_selector "h1", text: "Pressses"
  end

  test "creating a Presss" do
    visit pressses_url
    click_on "New Presss"

    fill_in "Body", with: @presss.body
    fill_in "Press date", with: @presss.press_date
    fill_in "Title", with: @presss.title
    click_on "Create Presss"

    assert_text "Presss was successfully created"
    click_on "Back"
  end

  test "updating a Presss" do
    visit pressses_url
    click_on "Edit", match: :first

    fill_in "Body", with: @presss.body
    fill_in "Press date", with: @presss.press_date
    fill_in "Title", with: @presss.title
    click_on "Update Presss"

    assert_text "Presss was successfully updated"
    click_on "Back"
  end

  test "destroying a Presss" do
    visit pressses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Presss was successfully destroyed"
  end
end
