Rails.application.routes.draw do
  devise_for :users
  
  root "welcome#index" 


  get 'tasks', to: 'tasks#index', as: 'tasks'
  get 'task/:taskId', to: 'tasks#show', as: 'show'

  get 'tasks/new', to: 'tasks#new', as: 'tasks_new'
  post 'task', to: 'tasks#create', as: 'tasks_create'

  get 'tasks/:taskId/edit', to: 'tasks#edit', as: 'tasks_edit'
  put 'tasks/:taskId/edit', to: 'tasks#update', as: 'tasks_update'

  delete 'tasks/:taskId/delete', to: 'tasks#destroy', as: 'tasks_delete'

  get 'about', to: 'about#index', as: 'about'
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
