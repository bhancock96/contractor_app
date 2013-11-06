ContractorApp::Application.routes.draw do
  resources :sessions
  resources :contractors

  root :to => 'welcome#index'
end
