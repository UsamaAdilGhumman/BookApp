Rails.application.routes.draw do
  #get 'tags/new', to: "tags#new"
  devise_for :authors
  #get 'books/index'
  #get 'books/new'
  #get 'books/create'
  #get 'books/show'
  # get 'books/update'
  # get 'books/destory'
  # get 'books/edit'

  root :to => "books#index"
  # get "books/:id/tags/booktag", to: "books#booktag"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books do 
    collection do
      get :booktag
      post :asstag
    end
  end
  resources :tags
  resources :authors
end
