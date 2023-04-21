class CreateTransferDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :transfer_details do |t|
      t.string :recipient_name
      t.string :recipient_account_number
      t.string :amount

      t.timestamps
    end
  end
end
