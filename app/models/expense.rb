class Expense < ActiveRecord::Base
  attr_accessible :store, :expense_type, :amount

  belongs_to :job

  validates_presence_of :store, :expense_type, :amount

  before_create :to_integer

  def to_integer
  	self.amount.to_f * 100
  end
end
