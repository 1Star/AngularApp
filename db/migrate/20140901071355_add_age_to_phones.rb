class AddAgeToPhones < ActiveRecord::Migration
  def change
    add_column :phones, :age, :integer
  end
end
