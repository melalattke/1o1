require 'test_helper'

class MatchSkinsControllerTest < ActionController::TestCase
  setup do
    @match_skin = match_skins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:match_skins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match_skin" do
    assert_difference('MatchSkin.count') do
      post :create, match_skin: { Items_id: @match_skin.Items_id, Skins_id: @match_skin.Skins_id }
    end

    assert_redirected_to match_skin_path(assigns(:match_skin))
  end

  test "should show match_skin" do
    get :show, id: @match_skin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match_skin
    assert_response :success
  end

  test "should update match_skin" do
    patch :update, id: @match_skin, match_skin: { Items_id: @match_skin.Items_id, Skins_id: @match_skin.Skins_id }
    assert_redirected_to match_skin_path(assigns(:match_skin))
  end

  test "should destroy match_skin" do
    assert_difference('MatchSkin.count', -1) do
      delete :destroy, id: @match_skin
    end

    assert_redirected_to match_skins_path
  end
end
