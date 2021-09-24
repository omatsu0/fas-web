Rails.application.routes.draw do
  root to: "posts#index"
  resources :posts

  namespace :home do
    get "about", as: 'about'
    get "terms", as: 'terms'
    get "privacy", as: 'privacy'
  end
  
end
