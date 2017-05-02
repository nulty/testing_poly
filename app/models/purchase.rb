class Purchase < ActiveRecord::Base
  has_many :line_items, as: :statementable
  has_many :buyers
  has_many :line_item_things, class_name: 'Buyer'
end
