require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :title => "Coffee",
        :price => "3.00",
        :kind => :drink
      ),
      Item.create!(
        :title => "Muffin",
        :price => "6.50",
        :kind => :food
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select ".item-title", :text => "Coffee".to_s, :count => 1
    assert_select ".item-title", :text => "Muffin".to_s, :count => 1
    assert_select ".item-price", :text => "$6.50".to_s, :count => 1
  end
end
