require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:coffee_unpaid)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url(item: items(:coffee).id)
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { item_id: @order.item_id, paid_at: @order.paid_at } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show unpaid order" do
    @order = orders(:coffee_unpaid)
    get order_url(@order)
    assert_response :success
  end

  test "should show paid order" do
    @order = orders(:coffee_paid)
    get order_url(@order)
    assert_response :success
  end

  test "should redirect edit of unpaid order" do
    @order = orders(:coffee_unpaid)
    get order_url(@order)
    assert_response :success
  end

  test "should get edit of paid order" do
    @order = orders(:coffee_paid)
    get edit_order_url(@order)
    assert_redirected_to order_url(@order)
  end

  test "should update order" do
    patch order_url(@order), params: {}
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
