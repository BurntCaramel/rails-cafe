require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :title => "MyString",
      :price => "9.99",
      :kind => :drink
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input#item_title[name=?]", "item[title]"

      assert_select "input#item_price[name=?]", "item[price]"

      #assert_select "input#item_kind[name=?]", "item[kind]"
    end
  end
end
