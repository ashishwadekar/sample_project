class CreateBankAccountTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :bank_account_transactions do |t|
      t.string :account_number
      t.string :ifsc_code

      t.timestamps
    end
  end
end
