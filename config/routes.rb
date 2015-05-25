Rails.application.routes.draw do
  root 'application#home'
  resources :workers
  get '/search' => 'workers#search', :as => 'search'
  get 'fooAdmin!2$' => 'sessions#new', :as => 'login'
  post 'fooAdmin!2$' => 'sessions#create'
  delete 'logout' => 'sessions#destroy', :as => 'logout'
end
