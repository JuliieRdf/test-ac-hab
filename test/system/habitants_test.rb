require "application_system_test_case"

class HabitantsTest < ApplicationSystemTestCase
  setup do
    @habitant = habitants(:one)
  end

  test "visiting the index" do
    visit habitants_url
    assert_selector "h1", text: "Habitants"
  end

  test "should create habitant" do
    visit habitants_url
    click_on "New habitant"

    fill_in "Birthday", with: @habitant.birthday
    fill_in "Name", with: @habitant.name
    fill_in "Personality", with: @habitant.personality
    fill_in "Photo", with: @habitant.photo
    fill_in "type", with: @habitant.type
    click_on "Create Habitant"

    assert_text "Habitant was successfully created"
    click_on "Back"
  end

  test "should update Habitant" do
    visit habitant_url(@habitant)
    click_on "Edit this habitant", match: :first

    fill_in "Birthday", with: @habitant.birthday
    fill_in "Name", with: @habitant.name
    fill_in "Personality", with: @habitant.personality
    fill_in "Photo", with: @habitant.photo
    fill_in "type", with: @habitant.type
    click_on "Update Habitant"

    assert_text "Habitant was successfully updated"
    click_on "Back"
  end

  test "should destroy Habitant" do
    visit habitant_url(@habitant)
    click_on "Destroy this habitant", match: :first

    assert_text "Habitant was successfully destroyed"
  end
end
