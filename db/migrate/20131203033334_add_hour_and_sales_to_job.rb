class AddHourAndSalesToJob < ActiveRecord::Migration
  def up
  	add_column :jobs, :estimated_hours, :integer
  	add_column :jobs, :estimated_sales, :string
  	add_column :jobs, :booked_hours, :integer
  	add_column :jobs, :booked_sales, :string
  	add_column :jobs, :produced_hours, :integer
  	add_column :jobs, :produced_sales, :string
  end

  def down
  	remove_column :jobs, :estimated_hours, :integer
  	remove_column :jobs, :estimated_sales, :string
  	remove_column :jobs, :booked_hours, :integer
  	remove_column :jobs, :booked_sales, :string
  	remove_column :jobs, :produced_hours, :integer
  	remove_column :jobs, :produced_sales, :string
  end
end
