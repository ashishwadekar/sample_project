class CreateBankAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :bank_accounts do |t|
      t.string :account_number, null: false
      t.string :ifsc_code, null: false

      t.timestamps
    end
  end
end
