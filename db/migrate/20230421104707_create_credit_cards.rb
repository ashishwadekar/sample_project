class CreateCreditCards < ActiveRecord::Migration[7.0]
  def change
    create_table :credit_cards do |t|
      t.string :card_holder_name
      t.string :card_number

      t.timestamps
    end
  end
end
