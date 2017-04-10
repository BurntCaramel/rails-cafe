require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      :title => "MyString",
      :price => "9.99",
      :kind => :drink
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_title[name=?]", "item[title]"

      assert_select "input#item_price[name=?]", "item[price]"

      #assert_select "input#item_kind[name=?]", "item[kind]"
    end
  end
end
