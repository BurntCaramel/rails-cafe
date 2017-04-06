require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test "should create item" do
    item = Item.new title: 'Coffee', price: 3.00
    assert_equal item.title, 'Coffee'
    assert_equal item.price, 3.00
  end
end
