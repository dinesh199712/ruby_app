require "application_system_test_case"

class RubyEmployeeAppsTest < ApplicationSystemTestCase
  setup do
    @ruby_employee_app = ruby_employee_apps(:one)
  end

  test "visiting the index" do
    visit ruby_employee_apps_url
    assert_selector "h1", text: "Ruby Employee Apps"
  end

  test "creating a Ruby employee app" do
    visit ruby_employee_apps_url
    click_on "New Ruby Employee App"

    fill_in "Age", with: @ruby_employee_app.age
    fill_in "Designation", with: @ruby_employee_app.designation
    fill_in "Gender", with: @ruby_employee_app.gender
    fill_in "Name", with: @ruby_employee_app.name
    click_on "Create Ruby employee app"

    assert_text "Ruby employee app was successfully created"
    click_on "Back"
  end

  test "updating a Ruby employee app" do
    visit ruby_employee_apps_url
    click_on "Edit", match: :first

    fill_in "Age", with: @ruby_employee_app.age
    fill_in "Designation", with: @ruby_employee_app.designation
    fill_in "Gender", with: @ruby_employee_app.gender
    fill_in "Name", with: @ruby_employee_app.name
    click_on "Update Ruby employee app"

    assert_text "Ruby employee app was successfully updated"
    click_on "Back"
  end

  test "destroying a Ruby employee app" do
    visit ruby_employee_apps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ruby employee app was successfully destroyed"
  end
end
