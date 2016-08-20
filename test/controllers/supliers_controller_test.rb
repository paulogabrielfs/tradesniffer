require 'test_helper'

class SupliersControllerTest < ActionController::TestCase
  setup do
    @suplier = supliers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supliers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suplier" do
    assert_difference('Suplier.count') do
      post :create, suplier: { address: @suplier.address, city: @suplier.city, country: @suplier.country, federal_id: @suplier.federal_id, name: @suplier.name, state: @suplier.state, zip_code: @suplier.zip_code }
    end

    assert_redirected_to suplier_path(assigns(:suplier))
  end

  test "should show suplier" do
    get :show, id: @suplier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @suplier
    assert_response :success
  end

  test "should update suplier" do
    patch :update, id: @suplier, suplier: { address: @suplier.address, city: @suplier.city, country: @suplier.country, federal_id: @suplier.federal_id, name: @suplier.name, state: @suplier.state, zip_code: @suplier.zip_code }
    assert_redirected_to suplier_path(assigns(:suplier))
  end

  test "should destroy suplier" do
    assert_difference('Suplier.count', -1) do
      delete :destroy, id: @suplier
    end

    assert_redirected_to supliers_path
  end
end
