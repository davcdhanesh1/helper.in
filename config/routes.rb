Rails.application.routes.draw do
  root 'workers#index'
  resources :workers
  get 'fooAdmin!2$' => 'sessions#new', :as => 'login'
  post 'fooAdmin!2$' => 'sessions#create'
  delete 'logout' => 'sessions#destroy', :as => 'logout'
end
