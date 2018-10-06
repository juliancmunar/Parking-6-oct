Rails.application.routes.draw do
  post 'usuario_token' => 'usuario_token#create'
  resources :images
  resources :tipo_de_plans
  resources :plans
  resources :tarifas
  resources :tipos_de_cupos
  resources :horarios
  resources :cupos
  resources :parqueaderos
  resources :usuarios
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
