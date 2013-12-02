class Contractor < ActiveRecord::Base
  attr_accessible :contractor_name, :email, :password, :password_confirmation, :business_name, :location

  has_many :jobs
  has_many :expenses
  
  validates_presence_of :email, :password, :contractor_name, :business_name
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  
  has_secure_password

end
