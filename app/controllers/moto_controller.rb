class MotoController < ApplicationController
    def index


    end

    def create
        moto = Moto.new
        moto.user_id = current_user.id
        moto.date_circu = params[:moto][:date_circu]
        moto.km = params[:moto][:km]
        moto.km = Time.now
        moto.modele_id = params[:moto][:modele]

        moto.save!

        redirect_to dashboard_path

    end



end
