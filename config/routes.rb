Rails.application.routes.draw do
  resources :pin_bils
  resources :bill_reciepts
  resources :bills
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
