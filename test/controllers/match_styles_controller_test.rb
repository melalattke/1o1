require 'test_helper'

class MatchStylesControllerTest < ActionController::TestCase
  setup do
    @match_style = match_styles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:match_styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match_style" do
    assert_difference('MatchStyle.count') do
      post :create, match_style: { item_id: @match_style.item_id, style_id: @match_style.style_id }
    end

    assert_redirected_to match_style_path(assigns(:match_style))
  end

  test "should show match_style" do
    get :show, id: @match_style
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match_style
    assert_response :success
  end

  test "should update match_style" do
    patch :update, id: @match_style, match_style: { item_id: @match_style.item_id, style_id: @match_style.style_id }
    assert_redirected_to match_style_path(assigns(:match_style))
  end

  test "should destroy match_style" do
    assert_difference('MatchStyle.count', -1) do
      delete :destroy, id: @match_style
    end

    assert_redirected_to match_styles_path
  end
end
