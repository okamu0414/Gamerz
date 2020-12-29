Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
  get 'profile', to: 'users#show'
  
  
end
