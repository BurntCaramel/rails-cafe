class Item < ApplicationRecord
  enum kind: [ :food, :drink ]

  validates :title, presence: true
  validates :price, presence: true
  validates :kind, presence: true
end
