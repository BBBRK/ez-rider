Rails.application.routes.draw do

    root 'home#index'

    devise_for :users

    get '/dashboard', to: 'home#dashboard'


    resources :motos, only: [:new, :create, :update, :edit] do


    end

end
