Rails.application.routes.draw do
  resources :transfer_details
  resources :transfers
  resources :user_details
  resources :bank_account_transactions
  resources :bank_accounts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Hint: Defines the root path route ("/")
  # root "articles#index"
  resources :users
end
