class CreateUserLoanDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :user_loan_details do |t|
      t.string :username
      t.string :bank_name
      t.boolean :in_debt

      t.timestamps
    end
  end
end
