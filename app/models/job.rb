class Job < ActiveRecord::Base
  attr_accessible :customer_name, :customer_street_address,
  				  :customer_zipcode, :customer_phone_number,
  				  :customer_email, :customer_city, :status,
  				  :notes, :estimated_hours, :estimated_sales,
  				  :booked_hours, :booked_sales, :produced_hours,
  				  :produced_sales

  belongs_to :contractor
  has_many :expenses
  has_many :images

  validates_presence_of :customer_name, :customer_street_address,
  						:customer_zipcode, :customer_phone_number,
  						:customer_email, :customer_city


  def job_expenses
  	expense_amounts = []
  	self.expenses.each do |expense|
  		expense_amounts << expense.amount.to_f.round(2)
  	end
  	expense_amounts
  end

  def before_images
  	self.images.where(image_type: 'Before')
  end

  def after_images
  	self.images.where(image_type: 'After')
  end

  def proposal_images
    self.images.where(image_type: 'Proposal')
  end

  def contract_images
    self.images.where(image_type: 'Contract')
  end
end
