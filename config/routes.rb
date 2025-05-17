Rails.application.routes.draw do
  resources :transactions, only: [:new, :create]
  resources :categories, only: [:index, :create]
  root to: "transactions#new" #アプリのトップページをフォームにする
end
