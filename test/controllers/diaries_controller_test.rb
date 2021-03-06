require 'test_helper'

class DiariesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @diary = diaries(:one)
    @plantopium = plantopium(:one)
    @user = users(:one)
    sign_in @user
  end

  test "should get index" do
    get diaries_url
    assert_response :success
  end

  test "should get new" do
    get new_diary_url, params: {plantopia_id: @plantopium.id}
    assert_response :success
  end

  test "should create diary" do
    assert_difference('Diary.count') do
      post diaries_url, params: { diary: { plantopia_id: @diary.plantopia_id, title: @diary.title } }
    end

    assert_redirected_to diary_url(Diary.last)
  end

  test "should show diary" do
    get diary_url(@diary)
    assert_response :success
  end

  test "should get edit" do
    get edit_diary_url(@diary)
    assert_response :success
  end

  test "should update diary" do
    patch diary_url(@diary), params: { diary: { plantopia_id: @diary.plantopia_id, title: @diary.title } }
    assert_redirected_to diary_url(@diary)
  end

  test "should destroy diary" do
    assert_difference('Diary.count', -1) do
      delete diary_url(@diary)
    end

    assert_redirected_to diaries_url
  end
end
