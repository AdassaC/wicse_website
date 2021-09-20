Rails.application.routes.draw do
    root "articles#index"
    
    get "/articles", to: "articles#index"
    resources :about, only: :index
end
