Rails.application.routes.draw do
  resources :statements
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Hint: Defines the root path route ("/")
  # root "articles#index"
  resources :users
  resources :balances
  resources :bank_account_details
  resources :banks
  resources :debit_cards
  resources :credit_cards
  resources :payments
  resources :user_loan_details
  resources :transfer_details
  resources :transfers
  resources :user_details
  resources :bank_account_transactions
  resources :bank_accounts
end
