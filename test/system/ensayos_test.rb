require "application_system_test_case"

class EnsayosTest < ApplicationSystemTestCase
  setup do
    @ensayo = ensayos(:one)
  end

  test "visiting the index" do
    visit ensayos_url
    assert_selector "h1", text: "Ensayos"
  end

  test "creating a Ensayo" do
    visit ensayos_url
    click_on "New Ensayo"

    fill_in "Name", with: @ensayo.name
    click_on "Create Ensayo"

    assert_text "Ensayo was successfully created"
    click_on "Back"
  end

  test "updating a Ensayo" do
    visit ensayos_url
    click_on "Edit", match: :first

    fill_in "Name", with: @ensayo.name
    click_on "Update Ensayo"

    assert_text "Ensayo was successfully updated"
    click_on "Back"
  end

  test "destroying a Ensayo" do
    visit ensayos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ensayo was successfully destroyed"
  end
end
