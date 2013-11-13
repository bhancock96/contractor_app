class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
    	t.string :customer_name
    	t.string :customer_street_address
    	t.string :customer_zipcode
    	t.string :customer_phone_number
    	t.string :customer_email
    	t.belongs_to :contractor

      t.timestamps
    end
  end
end
