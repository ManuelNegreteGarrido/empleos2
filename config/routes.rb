Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :positions do
    post 'apply', on: :member
  end

  # Ruta para cerrar sesión
  delete '/users/sign_out', to: 'devise/sessions#destroy'

  # Resto de tus rutas...

  get 'home/index'
  root "home#index"
end
