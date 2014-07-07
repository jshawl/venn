require 'test_helper'

class VsetsControllerTest < ActionController::TestCase
  setup do
    @vset = vsets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vsets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vset" do
    assert_difference('Vset.count') do
      post :create, vset: { name: @vset.name }
    end

    assert_redirected_to vset_path(assigns(:vset))
  end

  test "should show vset" do
    get :show, id: @vset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vset
    assert_response :success
  end

  test "should update vset" do
    patch :update, id: @vset, vset: { name: @vset.name }
    assert_redirected_to vset_path(assigns(:vset))
  end

  test "should destroy vset" do
    assert_difference('Vset.count', -1) do
      delete :destroy, id: @vset
    end

    assert_redirected_to vsets_path
  end
end
