class Job < ActiveRecord::Base
  attr_accessible :customer_name, :customer_street_address,
  				  :customer_zipcode, :customer_phone_number,
  				  :customer_email, :customer_city, :status

  belongs_to :contractor
  has_many :expenses

  validates_presence_of :customer_name, :customer_street_address,
  						:customer_zipcode, :customer_phone_number,
  						:customer_email, :customer_city
end
