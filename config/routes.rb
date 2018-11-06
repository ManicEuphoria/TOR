Rails.application.routes.draw do
  get 'student/attend_school'
  get 'student/drop_school'
  resources :micro_posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
