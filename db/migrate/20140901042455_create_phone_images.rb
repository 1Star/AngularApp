class CreatePhoneImages < ActiveRecord::Migration
  def change
    create_table :phone_images do |t|
      t.string :url
      t.belongs_to :phone
      t.timestamps
    end
  end
end
