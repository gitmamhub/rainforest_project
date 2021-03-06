require 'test_helper'

class ProductsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get products_controller_new_url
    assert_response :success
  end

  test "should get create" do
    get products_controller_create_url
    assert_response :success
  end

  test "should get update" do
    get products_controller_update_url
    assert_response :success
  end

  test "should get edit" do
    get products_controller_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get products_controller_destroy_url
    assert_response :success
  end

end
