require 'test_helper'

class VelementsControllerTest < ActionController::TestCase
  setup do
    @velement = velements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:velements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create velement" do
    assert_difference('Velement.count') do
      post :create, velement: { name: @velement.name }
    end

    assert_redirected_to velement_path(assigns(:velement))
  end

  test "should show velement" do
    get :show, id: @velement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @velement
    assert_response :success
  end

  test "should update velement" do
    patch :update, id: @velement, velement: { name: @velement.name }
    assert_redirected_to velement_path(assigns(:velement))
  end

  test "should destroy velement" do
    assert_difference('Velement.count', -1) do
      delete :destroy, id: @velement
    end

    assert_redirected_to velements_path
  end
end
