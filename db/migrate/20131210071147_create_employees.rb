class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
    	t.string :name
    	t.string :phone_number
    	t.string :street_address
    	t.string :city
    	t.string :state
    	t.string :email
    	t.string :birth_date
    	t.string :date_hired
    	t.belongs_to :contractor

      t.timestamps
    end
  end
end
