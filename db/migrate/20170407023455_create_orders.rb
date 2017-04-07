class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :item, foreign_key: true
      t.timestamp :paid_at, null: true

      t.timestamps
    end
  end
end
