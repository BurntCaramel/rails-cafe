require 'rails_helper'

RSpec.describe "menu/index.html.erb", type: :view do
  #pending "add some examples to (or delete) #{__FILE__}"
  it 'renders _item partial for each item' do
    assign(:drinks, [Item.new(title: 'Coffee', price: 3.00, kind: :drink)])
    assign(:food, [Item.new(title: 'Muffin', price: 5.50, kind: :food)])
    render
    expect(view).to render_template partial: '_item', count: 2
  end
end
