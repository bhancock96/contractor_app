class Expense < ActiveRecord::Base
  attr_accessible :store, :expense_type, :amount

  belongs_to :job

  validates_presence_of :store, :expense_type, :amount
end
