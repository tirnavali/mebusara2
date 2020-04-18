require "application_system_test_case"

class MpsTest < ApplicationSystemTestCase
  setup do
    @mp = mps(:one)
  end

  test "visiting the index" do
    visit mps_url
    assert_selector "h1", text: "Mps"
  end

  test "creating a Mp" do
    visit mps_url
    click_on "New Mp"

    fill_in "Birthdate", with: @mp.birthdate
    fill_in "Deaddate", with: @mp.deaddate
    fill_in "Detail", with: @mp.detail
    fill_in "Gender", with: @mp.gender
    fill_in "Name", with: @mp.name
    fill_in "Name2", with: @mp.name2
    fill_in "Surname", with: @mp.surname
    click_on "Create Mp"

    assert_text "Mp was successfully created"
    click_on "Back"
  end

  test "updating a Mp" do
    visit mps_url
    click_on "Edit", match: :first

    fill_in "Birthdate", with: @mp.birthdate
    fill_in "Deaddate", with: @mp.deaddate
    fill_in "Detail", with: @mp.detail
    fill_in "Gender", with: @mp.gender
    fill_in "Name", with: @mp.name
    fill_in "Name2", with: @mp.name2
    fill_in "Surname", with: @mp.surname
    click_on "Update Mp"

    assert_text "Mp was successfully updated"
    click_on "Back"
  end

  test "destroying a Mp" do
    visit mps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mp was successfully destroyed"
  end
end
