Rails.application.routes.draw do
  #get '/imagenes' => 'images#index'
  #get '/imagenes/nueva' => 'images#new', as: :new_images

  resources :images, only: [:index, :new, :create], path: '/imagenes'
end
