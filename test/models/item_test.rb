require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test "should allow valid" do
    item = Item.new title: 'Coffee', price: 3.00, kind: :drink
    assert_equal 'Coffee', item.title
    assert_equal 3.00, item.price
    assert item.drink?
    assert item.valid?

    item = Item.new title: 'Muffin', price: 5.50, kind: :food
    assert_equal 'Muffin', item.title
    assert_equal 5.50, item.price
    assert item.food?
    assert item.valid?
  end

  test "should disallow valid" do
    item = Item.new title: 'Coffee', kind: :drink
    assert_not item.valid?

    item = Item.new price: 3.00, kind: :drink
    assert_not item.valid?
  end
end
