Rails.application.routes.draw do
  resources :transactions, only: [:index, :new, :create]
  resources :categories, only: [:index, :create]
  root to: "transactions#index" #アプリのトップページをフォームにする
end
