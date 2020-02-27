Rails.application.routes.draw do
  resources :posts
  resources :categories
  resources :users, only:[:create,:show, :index]
  post 'sessions' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'loggedin' => 'sessions#is_logged_in?'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
