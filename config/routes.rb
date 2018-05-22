Rails.application.routes.draw do
    get 'notes/:id/users', to: 'notes#newsharing' ,as: 'new_sharing_note'
  post 'notes/:id/users', to: 'notes#createsharing' ,as: 'create_sharing_note'
  resources :notecollections
  resources :notes
  root to: "notes#index"
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
