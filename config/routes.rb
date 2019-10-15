Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'toy#index' 
  resources :toy
  # get 'toy/new'
  # post 'toy/create'
  # get 'toy/show/'
  # get 'toy/edit'
  # get 'toy/create'
  # patch 'toy/update'
  # get 'toy/update'
  # get 'toy/delete'

end
