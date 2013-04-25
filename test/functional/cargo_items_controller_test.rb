require 'test_helper'

class CargoItemsControllerTest < ActionController::TestCase
  setup do
    @cargo_item = cargo_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cargo_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cargo_item" do
    assert_difference('CargoItem.count') do
      post :create, cargo_item: { order_id: @cargo_item.order_id }
    end

    assert_redirected_to cargo_item_path(assigns(:cargo_item))
  end

  test "should show cargo_item" do
    get :show, id: @cargo_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cargo_item
    assert_response :success
  end

  test "should update cargo_item" do
    put :update, id: @cargo_item, cargo_item: { order_id: @cargo_item.order_id }
    assert_redirected_to cargo_item_path(assigns(:cargo_item))
  end

  test "should destroy cargo_item" do
    assert_difference('CargoItem.count', -1) do
      delete :destroy, id: @cargo_item
    end

    assert_redirected_to cargo_items_path
  end
end
