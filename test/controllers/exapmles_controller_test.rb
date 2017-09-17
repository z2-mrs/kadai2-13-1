require 'test_helper'

class ExapmlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exapmle = exapmles(:one)
  end

  test "should get index" do
    get exapmles_url
    assert_response :success
  end

  test "should get new" do
    get new_exapmle_url
    assert_response :success
  end

  test "should create exapmle" do
    assert_difference('Exapmle.count') do
      post exapmles_url, params: { exapmle: { message: @exapmle.message, name: @exapmle.name, title: @exapmle.title } }
    end

    assert_redirected_to exapmle_url(Exapmle.last)
  end

  test "should show exapmle" do
    get exapmle_url(@exapmle)
    assert_response :success
  end

  test "should get edit" do
    get edit_exapmle_url(@exapmle)
    assert_response :success
  end

  test "should update exapmle" do
    patch exapmle_url(@exapmle), params: { exapmle: { message: @exapmle.message, name: @exapmle.name, title: @exapmle.title } }
    assert_redirected_to exapmle_url(@exapmle)
  end

  test "should destroy exapmle" do
    assert_difference('Exapmle.count', -1) do
      delete exapmle_url(@exapmle)
    end

    assert_redirected_to exapmles_url
  end
end
