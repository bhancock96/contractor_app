class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
    	t.string :store
    	t.string :expense_type
    	t.string :amount
    	t.belongs_to :job
    	t.belongs_to :contractor

      t.timestamps
    end
  end
end
