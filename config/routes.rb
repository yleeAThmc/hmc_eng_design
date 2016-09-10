Rails.application.routes.draw do
  resources :surveys
  #get 'survey' => 'survey#index', :as => :survey
  root to: 'visitors#index'
  #root to: 'surveys#index'
  devise_for :users
  resources :users
  resources :questions
  resources :responses
  resources :take_surveys
end
