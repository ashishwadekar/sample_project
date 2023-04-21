class CreateBankAccountDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :bank_account_details do |t|
      t.string :account_no, null: false
      t.string :ifsc_code, null: false
      t.string :bank_name, null: false
      t.string :user_name, null: false

      t.timestamps
    end
  end
end
