class CreateBalances < ActiveRecord::Migration[7.0]
  def change
    create_table :balances do |t|
      t.string :account_number, null: false
      t.decimal :account_balance, null: false, precision: 10, scale: 2, default: 0.0

      t.timestamps
    end
  end
end
