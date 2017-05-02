class LineItem < ActiveRecord::Base
  belongs_to :statementable, polymorphic: true
  belongs_to :account
end
