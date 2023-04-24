class CreateStatements < ActiveRecord::Migration[7.0]
  def change
    create_table :statements do |t|
      t.decimal :opening_balance

      t.timestamps
    end
  end
end
