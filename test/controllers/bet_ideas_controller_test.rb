require 'test_helper'

class BetIdeasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bet_idea = bet_ideas(:one)
  end

  test "should get index" do
    get bet_ideas_url
    assert_response :success
  end

  test "should get new" do
    get new_bet_idea_url
    assert_response :success
  end

  test "should create bet_idea" do
    assert_difference('BetIdea.count') do
      post bet_ideas_url, params: { bet_idea: { idea: @bet_idea.idea } }
    end

    assert_redirected_to bet_idea_url(BetIdea.last)
  end

  test "should show bet_idea" do
    get bet_idea_url(@bet_idea)
    assert_response :success
  end

  test "should get edit" do
    get edit_bet_idea_url(@bet_idea)
    assert_response :success
  end

  test "should update bet_idea" do
    patch bet_idea_url(@bet_idea), params: { bet_idea: { idea: @bet_idea.idea } }
    assert_redirected_to bet_idea_url(@bet_idea)
  end

  test "should destroy bet_idea" do
    assert_difference('BetIdea.count', -1) do
      delete bet_idea_url(@bet_idea)
    end

    assert_redirected_to bet_ideas_url
  end
end
