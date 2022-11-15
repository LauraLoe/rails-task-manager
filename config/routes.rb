Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #Read all tasks
  get "tasks", to: "tasks#index"

  # Create
  get "tasks/new", to: "tasks#new", as: :task_create
  post "tasks", to: "tasks#create"

  #Update
  get "tasks/:id/edit", to: "tasks#edit", as: :task_edit
  patch "tasks/:id", to: "tasks#update"

  #Delete
  delete "tasks/:id", to: "tasks#destroy"

  #Read one task
  get "tasks/:id", to: "tasks#show", as: :task
end
