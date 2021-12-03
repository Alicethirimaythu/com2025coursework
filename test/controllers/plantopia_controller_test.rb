require 'test_helper'

class PlantopiaControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @plantopium = plantopium(:one)
    @user = users(:one)
    sign_in @user
  end

  test "should get index" do
    get plantopia_url
    assert_response :success
  end

  test "should get new" do
    get new_plantopium_url
    assert_response :success
  end

  test "should create plantopium" do
    assert_difference('Plantopium.count') do
      post plantopia_url, params: { plantopium: { description: @plantopium.description, name: @plantopium.name + " create" } }
    end

    assert_redirected_to plantopium_url(Plantopium.last)
  end

  test "should show plantopium" do
    get plantopium_url(@plantopium)
    assert_response :success
  end

  test "should get edit" do
    get edit_plantopium_url(@plantopium)
    assert_response :success
  end

  test "should update plantopium" do
    patch plantopium_url(@plantopium), params: { plantopium: { description: @plantopium.description, name: @plantopium.name } }
    assert_redirected_to plantopium_url(@plantopium)
  end

  test "should destroy plantopium" do
    assert_difference('Plantopium.count', -1) do
      delete plantopium_url(@plantopium)
    end

    assert_redirected_to plantopia_url
  end
end
