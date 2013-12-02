ContractorApp::Application.routes.draw do
  resources :contractors do
  	resources :jobs do
  		resources :expenses, only: [:new, :create]
  	end
  end
  
  resources :contractors do
  	resources :expenses, only: [:index]
  end
  post '/sessions', :to => 'sessions#create', :as => 'create_session'
  get '/sessions/new', :to => 'sessions#new', :as => 'new_session'
  post '/logout', :to => 'sessions#destroy', :as => 'logout'

  root :to => 'welcome#index'
end
