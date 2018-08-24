Rails.application.routes.draw do
  resources :students
  resources :courses
  resources :cohorts
  resources :instructors
  resources :schedules
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
