require 'test_helper'

class ChooseskinsControllerTest < ActionController::TestCase
  setup do
    @chooseskin = chooseskins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chooseskins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chooseskin" do
    assert_difference('Chooseskin.count') do
      post :create, chooseskin: {  }
    end

    assert_redirected_to chooseskin_path(assigns(:chooseskin))
  end

  test "should show chooseskin" do
    get :show, id: @chooseskin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chooseskin
    assert_response :success
  end

  test "should update chooseskin" do
    patch :update, id: @chooseskin, chooseskin: {  }
    assert_redirected_to chooseskin_path(assigns(:chooseskin))
  end

  test "should destroy chooseskin" do
    assert_difference('Chooseskin.count', -1) do
      delete :destroy, id: @chooseskin
    end

    assert_redirected_to chooseskins_path
  end
end
