Rails.application.routes.draw do
  resources :student
  resources :course
  resources :cohort
  resources :instructor
  resources :schedule
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
