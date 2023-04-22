class CreateDebitCards < ActiveRecord::Migration[7.0]
  def change
    create_table :debit_cards do |t|
      t.string :card_number
      t.string :card_name

      t.timestamps
    end
  end
end
