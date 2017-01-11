Rails.application.routes.draw do
  resources :products
  # Creado por Devise para las urls /user/sign_in etc
  devise_for :users

  # Ruta a la que dirigir el formulario para poder guardar el correo 
  # Nombro la ruta con create_email para poder usarla luego como: create_email_path
  post "/emails/create", as: :create_email

  # Esta es la ruta para el user que está sign in
  authenticated :user do
    root 'welcome#index'
  end

  # Esta es la ruta para el user que no está sign in
  unauthenticated :user do
    devise_scope :user do
      root 'welcome#unregistered', as: :unregistered_root
    end
  end
end
