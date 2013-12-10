class Contractor < ActiveRecord::Base
  attr_accessible :contractor_name, :email, :password, :password_confirmation, :business_name, :location

  has_many :jobs
  has_many :expenses
  has_many :employees
  
  validates_presence_of :email, :password, :contractor_name, :business_name
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  
  has_secure_password

  def total_booked
  	booked_amounts = []
  	self.jobs.each do |job|
  		booked_amounts << job.booked_sales.to_i
  	end
  	if (booked_amounts.length > 1) && self.total_produced
  		(booked_amounts.inject(:+)) + self.total_produced
  	else !self.total_produced && booked_amounts
  		booked_amounts.inject(:+) || booked_amounts
  	end
  end

  def total_produced
  	produced_amounts = []
  	self.jobs.each do |job|
  		if job.status == 'Complete'
  			produced_amounts << job.produced_sales.to_i
  		end
  	end
  	produced_amounts.inject(:+)
  end

  def unproduced_sales
  	if self.total_booked && self.total_produced
  		self.total_booked - self.total_produced
  	else
  		self.total_booked
  	end
  end

  def total_job_expenses
  	expenses = []
  	self.jobs.each do |job|
  	  expenses << job.job_expenses
  	end
  	all_expenses = expenses.flatten
  	all_expenses.inject(:+)
  end

  def total_profit
  	if self.total_produced && self.total_job_expenses
  		self.total_produced - self.total_job_expenses
  	end
  end

  def profit_margin
  	if self.total_produced && self.total_job_expenses
  		(((self.total_produced - self.total_job_expenses).to_f/(self.total_produced).to_f) * 100).round(2)
  	end
  end
end
