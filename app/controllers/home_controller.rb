class HomeController < ApplicationController
  def index
  end

  def dashboard

      @motos = Moto.where(user_id: current_user)
      @moto = Moto.new
      @marques = Marque.all.order(nom: "ASC")

  end

  def double_select

      return render json:{
          
      }
  end
end
