Rails.application.routes.draw do
    devise_for :users
    #devise_for :users, :controllers => { :registrations => :registrations }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    # as :user do
    #     get 'signin' => 'sessions#new'
    #     delete 'signout' => 'sessions#destroy'
    #     get 'signup' => 'registrations#new'
    # end
    root 'pages#home'
    get "about" => 'pages#about'
    get "contact" => 'pages#contact'
    get "thatsall" => 'agreements#thatsall'
    
    
    resources :postings do 
        resources :agreements
    end
    
    resources :agreements, only: [:create, :index]
    #resources :users
    get "user_signin" => 'postings#show'
    put "agreements" => 'agreements#update'
end
