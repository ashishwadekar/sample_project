class CreateBankAccountDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :bank_account_details do |t|
      t.string :account_no
      t.string :ifsc_code
      t.string :bank_name
      t.string :user_name

      t.timestamps
    end
  end
end
