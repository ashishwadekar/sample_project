class CreateInsurances < ActiveRecord::Migration[7.0]
  def change
    create_table :insurances do |t|
      t.string :insurance_name, null: false
      t.string :insurance_duration, null: false

      t.timestamps
    end
  end
end
