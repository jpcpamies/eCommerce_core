Rails.application.routes.draw do
  # Creado por Devise para las urls /user/sign_in etc
  devise_for :users

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
