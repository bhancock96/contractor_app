class AddNotesToJob < ActiveRecord::Migration
  def up
  	add_column :jobs, :notes, :string
  end

  def down
  	remove_column :jobs, :notes, :string
  end
end
