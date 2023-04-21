class CreateStatements < ActiveRecord::Migration[7.0]
  def change
    create_table :statements do |t|
      t.string :ifsc_code,null :false
      t.string :account_number,null :false

      t.timestamps
    end
  end
end
