Rails.application.routes.draw do

    root 'home#index'

    devise_for :users

    get '/dashboard', to: 'home#dashboard'
    get '/double_select/:id', to: 'home#double_select'



    resources :motos, only: [:new, :create, :update, :edit] do
        get '/detail', to: 'motos#detail'
        patch '/update_km', to: 'motos#update_km'
        delete '/destroy', to: 'motos#destroy'

    end

end
