Rails.application.routes.draw do

  # Devise uses the default sign_path which is /users/sign_up. The following changes 
  # the default path to domain.com/sign_up:
  devise_scope :user do
     get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
     get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end
      
      
  devise_for :users
  resources :tweets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "tweets#index"
end
