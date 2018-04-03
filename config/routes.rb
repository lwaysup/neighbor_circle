Rails.application.routes.draw do
    devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    # as :user do
    #     get 'signin' => 'sessions#new'
    #     delete 'signout' => 'sessions#destroy'
    #     get 'signup' => 'registrations#new'
    # end
    root 'pages#home'
    get "about" => 'pages#about'
    get "contact" => 'pages#contact'
    get "dump" => 'pages#dump'
    
    resources :postings do 
        resources :agreements
    end
end
