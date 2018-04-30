require "application_system_test_case"

class DoctorsTest < ApplicationSystemTestCase
  setup do
    @doctor = doctors(:one)
  end

  test "visiting the index" do
    visit doctors_url
    assert_selector "h1", text: "Doctors"
  end

  test "creating a Doctor" do
    visit doctors_url
    click_on "New Doctor"

    fill_in "Date", with: @doctor.date
    fill_in "Details", with: @doctor.details
    fill_in "Patient", with: @doctor.patient
    fill_in "Time", with: @doctor.time
    click_on "Create Doctor"

    assert_text "Doctor was successfully created"
    click_on "Back"
  end

  test "updating a Doctor" do
    visit doctors_url
    click_on "Edit", match: :first

    fill_in "Date", with: @doctor.date
    fill_in "Details", with: @doctor.details
    fill_in "Patient", with: @doctor.patient
    fill_in "Time", with: @doctor.time
    click_on "Update Doctor"

    assert_text "Doctor was successfully updated"
    click_on "Back"
  end

  test "destroying a Doctor" do
    visit doctors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Doctor was successfully destroyed"
  end
end
