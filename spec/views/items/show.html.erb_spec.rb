require 'rails_helper'

RSpec.describe "items/show", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :title => "Coffee",
      :price => "3.50",
      :kind => :drink
    ))
  end

  it "renders attributes" do
    render
    expect(rendered).to match(/Coffee/)
    expect(rendered).to match(/3.50/)
  end
end
