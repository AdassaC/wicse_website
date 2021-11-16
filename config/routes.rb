Rails.application.routes.draw do
  
  devise_for :users
  get '/user' => "home#index", :as => :user_root

  root to: "home#index"
    #HOME
    get "/home", to: "home#index"
    resources :home, only: :index

    #ABOUT
    get "/about", to: "about#index"
    resources :about, only: :index

    #CONTACT
    get "/contact", to: "contact#index"
    resources :contact, only: :index

    #SIGNUP
    get "/sign_up", to: "sign_up#index"
    resources :sign_up, only: :index

    #LOGIN
    get "/login", to: "login#index"
    resources :login, only: :index

    #USER MAIN
    get "/user_main", to: "user_main#index"
    resources :user_main, only: :index

    #COLLEGES
    resources :colleges, only: %i[index show]

    #COURSE
    resources :courses, only: %i[index show]

    #TRENDING COURSES
    get "/trending_courses", to: "trending_courses#index"
    resources :trending_courses, only: :index

    #REVIEWS
    resources :reviews, only: %i[new create] 
      #:edit, :update, :destroy]

end
