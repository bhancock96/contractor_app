class Job < ActiveRecord::Base
  attr_accessible :customer_name, :customer_street_address,
  				  :customer_zipcode, :customer_phone_number,
  				  :customer_email, :customer_city, :status,
  				  :notes, :estimated_hours, :estimated_sales,
  				  :booked_hours, :booked_sales, :produced_hours,
  				  :produced_sales

  belongs_to :contractor
  has_many :expenses

  validates_presence_of :customer_name, :customer_street_address,
  						:customer_zipcode, :customer_phone_number,
  						:customer_email, :customer_city
end
