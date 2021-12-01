require "application_system_test_case"

class PlantopiaTest < ApplicationSystemTestCase
  setup do
    @plantopium = plantopia(:one)
  end

  test "visiting the index" do
    visit plantopia_url
    assert_selector "h1", text: "Plantopia"
  end

  test "creating a Plantopium" do
    visit plantopia_url
    click_on "New Plantopium"

    fill_in "Description", with: @plantopium.description
    fill_in "Name", with: @plantopium.name
    click_on "Create Plantopium"

    assert_text "Plantopium was successfully created"
    click_on "Back"
  end

  test "updating a Plantopium" do
    visit plantopia_url
    click_on "Edit", match: :first

    fill_in "Description", with: @plantopium.description
    fill_in "Name", with: @plantopium.name
    click_on "Update Plantopium"

    assert_text "Plantopium was successfully updated"
    click_on "Back"
  end

  test "destroying a Plantopium" do
    visit plantopia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plantopium was successfully destroyed"
  end
end
