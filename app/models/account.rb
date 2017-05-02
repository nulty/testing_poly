class Account < ActiveRecord::Base
  has_many :line_items
end
