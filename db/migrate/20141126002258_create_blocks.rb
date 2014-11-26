class CreateBlocks < ActiveRecord::Migration
  def change
  	create_table :blocks do |t|
  		t.string :key
  		t.string :content
  		t.timestamps
  	end
  end
end
