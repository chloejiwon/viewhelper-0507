Rails.application.routes.draw do
  post 'posts/:post_id/comments/create' => 'comments#create'
  get 'posts/:post_id/comments/destroy/:id' => 'comments#destroy'

  get 'posts' => 'posts#index'
  post 'posts/create' => 'posts#create'
  get 'posts/destroy/:id' => 'posts#destroy'

  post 'posts/find' => 'posts#find'
  
  root 'posts#index'

  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
