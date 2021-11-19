require "test_helper"

class RubyEmployeeAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ruby_employee_app = ruby_employee_apps(:one)
  end

  test "should get index" do
    get ruby_employee_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_ruby_employee_app_url
    assert_response :success
  end

  test "should create ruby_employee_app" do
    assert_difference('RubyEmployeeApp.count') do
      post ruby_employee_apps_url, params: { ruby_employee_app: { age: @ruby_employee_app.age, designation: @ruby_employee_app.designation, gender: @ruby_employee_app.gender, name: @ruby_employee_app.name } }
    end

    assert_redirected_to ruby_employee_app_url(RubyEmployeeApp.last)
  end

  test "should show ruby_employee_app" do
    get ruby_employee_app_url(@ruby_employee_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_ruby_employee_app_url(@ruby_employee_app)
    assert_response :success
  end

  test "should update ruby_employee_app" do
    patch ruby_employee_app_url(@ruby_employee_app), params: { ruby_employee_app: { age: @ruby_employee_app.age, designation: @ruby_employee_app.designation, gender: @ruby_employee_app.gender, name: @ruby_employee_app.name } }
    assert_redirected_to ruby_employee_app_url(@ruby_employee_app)
  end

  test "should destroy ruby_employee_app" do
    assert_difference('RubyEmployeeApp.count', -1) do
      delete ruby_employee_app_url(@ruby_employee_app)
    end

    assert_redirected_to ruby_employee_apps_url
  end
end
