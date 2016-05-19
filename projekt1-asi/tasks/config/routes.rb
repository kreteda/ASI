Rails.application.routes.draw do
  #get 'site/index'

  devise_for :users
  resources :tasks
  #root 'tasks#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
  # Use this
  root 'site#index'
end
