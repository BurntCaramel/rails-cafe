require 'rails_helper'

RSpec.describe 'Menu', type: :request do
  describe "GET /menu" do
    it "should have content" do
      get menu_path
      assert_select 'h1', 'Menu'
      assert_select 'h2', 'Drinks'
      assert_select 'h2', 'Food'
    end
  end
end
