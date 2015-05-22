Rails.application.routes.draw do
  get '/imagenes' => 'images#index'
  get '/imagenes/nueva' => 'images#new', as: :new_images
end
