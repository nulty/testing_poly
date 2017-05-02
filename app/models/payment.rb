class Payment < ActiveRecord::Base
  has_many :line_items, as: :statementable
  has_many :cards
  has_many :line_item_things, class_name: 'Card'
end
