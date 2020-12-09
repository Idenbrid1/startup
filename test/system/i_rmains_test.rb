require "application_system_test_case"

class IRmainsTest < ApplicationSystemTestCase
  setup do
    @i_rmain = i_rmains(:one)
  end

  test "visiting the index" do
    visit i_rmains_url
    assert_selector "h1", text: "I Rmains"
  end

  test "creating a I rmain" do
    visit i_rmains_url
    click_on "New I Rmain"

    fill_in "Ir date", with: @i_rmain.ir_date
    fill_in "Ir file", with: @i_rmain.ir_file
    fill_in "Title", with: @i_rmain.title
    click_on "Create I rmain"

    assert_text "I rmain was successfully created"
    click_on "Back"
  end

  test "updating a I rmain" do
    visit i_rmains_url
    click_on "Edit", match: :first

    fill_in "Ir date", with: @i_rmain.ir_date
    fill_in "Ir file", with: @i_rmain.ir_file
    fill_in "Title", with: @i_rmain.title
    click_on "Update I rmain"

    assert_text "I rmain was successfully updated"
    click_on "Back"
  end

  test "destroying a I rmain" do
    visit i_rmains_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "I rmain was successfully destroyed"
  end
end
