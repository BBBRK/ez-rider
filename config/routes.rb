Rails.application.routes.draw do

    root 'home#index'

    devise_for :users

    get '/dashboard', to: 'home#dashboard'
    get '/double_select/:id', to: 'home#double_select'



    resources :motos, only: [:new, :create, :update, :edit] do



    end

end
