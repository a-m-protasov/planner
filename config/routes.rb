Planner::Application.routes.draw do
  
  devise_for :users
  resources :tasks
  resources :users
  
end
