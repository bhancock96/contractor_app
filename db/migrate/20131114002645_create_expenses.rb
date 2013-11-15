class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
    	t.string :store
    	t.string :expense_type
    	t.integer :amount
    	t.belongs_to :job

      t.timestamps
    end
  end
end
