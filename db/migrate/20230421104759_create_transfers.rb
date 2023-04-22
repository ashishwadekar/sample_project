class CreateTransfers < ActiveRecord::Migration[7.0]
  def change
    create_table :transfers do |t|
      t.string :recipient_account_number
      t.string :recipient_name
      t.string :amount

      t.timestamps
    end
  end
end
