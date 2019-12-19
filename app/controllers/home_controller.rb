class HomeController < ApplicationController
  def index
  end

  def dashboard

      @motos = Moto.where(user_id: current_user)

      puts @motos

  end
end
