require 'test_helper'

class PurchaseCatalogsControllerTest < ActionController::TestCase
  setup do
    @purchase_catalog = purchase_catalogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purchase_catalogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purchase_catalog" do
    assert_difference('PurchaseCatalog.count') do
      post :create, purchase_catalog: { location_of_use: @purchase_catalog.location_of_use, picture: @purchase_catalog.picture, place_of_purchase: @purchase_catalog.place_of_purchase, price: @purchase_catalog.price, product_name: @purchase_catalog.product_name, quantity_purchased: @purchase_catalog.quantity_purchased }
    end

    assert_redirected_to purchase_catalog_path(assigns(:purchase_catalog))
  end

  test "should show purchase_catalog" do
    get :show, id: @purchase_catalog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purchase_catalog
    assert_response :success
  end

  test "should update purchase_catalog" do
    patch :update, id: @purchase_catalog, purchase_catalog: { location_of_use: @purchase_catalog.location_of_use, picture: @purchase_catalog.picture, place_of_purchase: @purchase_catalog.place_of_purchase, price: @purchase_catalog.price, product_name: @purchase_catalog.product_name, quantity_purchased: @purchase_catalog.quantity_purchased }
    assert_redirected_to purchase_catalog_path(assigns(:purchase_catalog))
  end

  test "should destroy purchase_catalog" do
    assert_difference('PurchaseCatalog.count', -1) do
      delete :destroy, id: @purchase_catalog
    end

    assert_redirected_to purchase_catalogs_path
  end
end
