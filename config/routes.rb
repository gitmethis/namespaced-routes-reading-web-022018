Rails.application.routes.draw do

  resources :authors, only: [:show, :index] do
    resources :posts, only: [:show, :index, :new, :edit]
  end
  
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
    
  scope '/admin' do
    resources :stats, module: 'admin' only: [:index]  
  end
  
  
  root 'posts#index'
end
