Rails.application.routes.draw do
  devise_for :users
  get '/landing/', to: 'landing#index'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :students
  # Defines the root path route ("/")
  # root "articles#index"
  # get '/students/', to: 'students#index'
  root to: "student#index"

  # #create new students
 
  # post '/students/', to: 'students#create'
  # get '/students/new', to: 'students#new', as: 'new_student'
  #  # show a student
  #  get '/students/:id', to: 'students#show', as: 'student'
 
  # #edit student
  # get '/students/:id/edit', to: 'students#edit', as: 'edit_student'
  # put '/students/:id', to: 'students#update'
  # patch '/students/:id', to: 'students#update'
end
