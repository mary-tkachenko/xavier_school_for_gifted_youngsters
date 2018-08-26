Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :students
  resources :courses
  resources :cohorts
  resources :instructors
  resources :schedules
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
