class CreateUserDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :user_details do |t|
      t.string :Full_name
      t.integer :Mobile_no
      t.string :Adress

      t.timestamps
    end
  end
end
