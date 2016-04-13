Rails.application.routes.draw do
  resources :surveys do
    get 'save_all_responses', on: :member
  end
  #get 'survey' => 'survey#index', :as => :survey
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :questions
  resources :responses
  resources :take_surveys
end
