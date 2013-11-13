class AddCustomerCityToJob < ActiveRecord::Migration
  def up
  	add_column :jobs, :customer_city, :string
  end

  def down
  	remove_column :jobs, :customer_city, :string
  end
end
