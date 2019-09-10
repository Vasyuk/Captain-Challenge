require "application_system_test_case"

class WarrioresTest < ApplicationSystemTestCase
  setup do
    @warrior = warriores(:one)
  end

  test "visiting the index" do
    visit warriores_url
    assert_selector "h1", text: "Warriores"
  end

  test "creating a Warrior" do
    visit warriores_url
    click_on "New Warrior"

    click_on "Create Warrior"

    assert_text "Warrior was successfully created"
    click_on "Back"
  end

  test "updating a Warrior" do
    visit warriores_url
    click_on "Edit", match: :first

    click_on "Update Warrior"

    assert_text "Warrior was successfully updated"
    click_on "Back"
  end

  test "destroying a Warrior" do
    visit warriores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Warrior was successfully destroyed"
  end
end
