class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
    	t.string :name
    	t.string :availability
    	t.string :battery
    	t.string :camera
    	t.string :connectivity
    	t.boolean :gps
    	t.boolean :infrared
    	t.string :display
    	t.boolean :touch_screen
    	t.integer :flash
    	t.integer :ram
      t.timestamps
    end
  end
end
