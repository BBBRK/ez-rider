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
      @modeles_id = []

      @modeles.each do |modele|
          @modeles_name.push(modele.nom)
          @modeles_id.push(modele.id)
      end

      return render json:{
          name: @modeles_name,
          modele_id: @modeles_id
      }
  end


end
