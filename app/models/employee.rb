class Employee < ActiveRecord::Base
  attr_accessible :name, :phone_number, :birth_date,
  				  :date_hired, :street_address, :city,
  				  :state, :email

  belongs_to :contractor

  validates_presence_of :name, :phone_number, :birth_date,
  						:date_hired
end
