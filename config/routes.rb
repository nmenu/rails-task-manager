Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")

  #Show All tasks
  get "tasks", to: "tasks#index"

  #Create a task
  #display the form
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"

  #Show One task
  get "tasks/:id", to: "tasks#show", as: :task

  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  # get "delete", to: "tasks#delete"
  delete "tasks/:id", to: "tasks#destroy"

end
