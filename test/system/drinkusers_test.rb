require "application_system_test_case"

class DrinkusersTest < ApplicationSystemTestCase
  setup do
    @drinkuser = drinkusers(:one)
  end

  test "visiting the index" do
    visit drinkusers_url
    assert_selector "h1", text: "Drinkusers"
  end

  test "creating a Drinkuser" do
    visit drinkusers_url
    click_on "New Drinkuser"

    click_on "Create Drinkuser"

    assert_text "Drinkuser was successfully created"
    click_on "Back"
  end

  test "updating a Drinkuser" do
    visit drinkusers_url
    click_on "Edit", match: :first

    click_on "Update Drinkuser"

    assert_text "Drinkuser was successfully updated"
    click_on "Back"
  end

  test "destroying a Drinkuser" do
    visit drinkusers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Drinkuser was successfully destroyed"
  end
end
