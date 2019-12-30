Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :day do
    get 'move', to: 'day#move'
    resources :tasks
    patch 'task_status' , to: 'tasks#task_status'
  end


  root 'day#index'

end
