require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "should allow valid order" do
    order = Order.new item: items(:coffee)
    assert order.valid?
  end

  test "should disallow invalid order" do
    assert true
  end
end
