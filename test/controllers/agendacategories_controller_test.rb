require 'test_helper'

class AgendacategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agendacategory = agendacategories(:one)
  end

  test "should get index" do
    get agendacategories_url
    assert_response :success
  end

  test "should get new" do
    get new_agendacategory_url
    assert_response :success
  end

  test "should create agendacategory" do
    assert_difference('Agendacategory.count') do
      post agendacategories_url, params: { agendacategory: { category: @agendacategory.category } }
    end

    assert_redirected_to agendacategory_url(Agendacategory.last)
  end

  test "should show agendacategory" do
    get agendacategory_url(@agendacategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_agendacategory_url(@agendacategory)
    assert_response :success
  end

  test "should update agendacategory" do
    patch agendacategory_url(@agendacategory), params: { agendacategory: { category: @agendacategory.category } }
    assert_redirected_to agendacategory_url(@agendacategory)
  end

  test "should destroy agendacategory" do
    assert_difference('Agendacategory.count', -1) do
      delete agendacategory_url(@agendacategory)
    end

    assert_redirected_to agendacategories_url
  end
end
