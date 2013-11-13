class Job < ActiveRecord::Base
  attr_accessible :customer_name, :customer_street_address,
  				  :customer_zipcode, :customer_phone_number,
  				  :customer_email

  belongs_to :contractor

  validates_presence_of :customer_name, :customer_street_address,
  						:customer_zipcode, :customer_phone_number,
  						:customer_email
end
