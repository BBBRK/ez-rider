class MotosController < ApplicationController
    def index


    end

    def create

        moto = Moto.new
        moto.user_id = current_user.id
        moto.date_circu = params[:moto][:date_circu]
        moto.km = params[:moto][:km]
        moto.date_modif = Time.now
        moto.modele_id = params[:moto][:modele]
        moto.marque_id = params[:moto][:marque_id]

        moto.save!

        redirect_to dashboard_path

    end

    def detail
        
        @moto = Moto.find(params[:moto_id])
    end

    def delete

    end

end
