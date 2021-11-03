Rails.application.routes.draw do
  get 'user_course_results/index'
  get 'user_find_school/index'
  get 'course_results/index'
  devise_for :users
  #get '/user' => "user_main#index", :as => :user_root
  devise_for :admins

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

    #COLLGES
    resources :colleges, only: %i[index show]

    #FIND SCHOOL RESULTS
    get "/find_school_results", to:"find_school_results#search"
    resources :find_school_results

    #SEARCH
    get "/search", to: "search#index"
    resources :search, only: :index

    #TRENDING COURSES
    get "/trending_courses", to: "trending_courses#index"
    resources :trending_courses, only: :index

    #WRITE A REVIEW PAGE
    get "/write_review", to: "write_review#index"
    resources :write_review, only: :index

end
