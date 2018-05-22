Rails.application.routes.draw do
    get 'notes/:id/users', to: 'notes#newsharing' ,as: 'new_sharing_note'
  post 'notes/:id/users', to: 'notes#createsharing' ,as: 'create_sharing_note'
  post 'users/:id/add', to: 'users#addfriend' ,as: 'add_friend'
  resources :notecollections
  resources :notes
  root to: "notes#index"
  devise_for :users
    as :user do
       get '/users', to: 'users/sessions#index'
        get '/users/:id', to: 'users/sessions#show' , as: "user"
        get '/users/:id/edit', to: 'users/sessions#edit' , as: "edit_user"
        get '/users/new', to: 'users/sessions#new' , as: "new_user"
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
