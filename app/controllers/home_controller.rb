class HomeController < ApplicationController
  def index
  end

  def dashboard

      @motos = Moto.where(user_id: current_user)
      @moto = Moto.new
      @marques = Marque.all.order(nom: "ASC")

  end

  def double_select

      @modeles = Modele.where(marque_id: params[:id])

      @modeles_name = []

      @modeles.each do |modele|
          @modeles_name.push(modele.nom)
      end

      return render json:{
          modeles: @modeles_name

      }
  end


end
