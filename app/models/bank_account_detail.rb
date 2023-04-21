class BankAccountDetail < ApplicationRecord
  validates :account_no, presence: true
  validates :ifsc_code, presence: true
  validates :bank_name, presence: true
  validates :user_name, presence: true
end
