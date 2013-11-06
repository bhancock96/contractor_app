class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
    	t.string :contractor_name
    	t.string :email
    	t.string :password_digest
    	t.string :business_name
    	t.string :location

      t.timestamps
    end
  end
end
