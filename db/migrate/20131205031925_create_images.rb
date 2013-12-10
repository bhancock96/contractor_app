class CreateImages < ActiveRecord::Migration
  def change
  	create_table :images do |t|
			t.string :file
			t.string :image_type
			t.belongs_to :job

			t.timestamps
  	end
  end
end
