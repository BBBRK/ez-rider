class MotosController < ApplicationController

     before_action :set_moto, except: [:new, :create, :update ]

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

    end

    def update_km

        @moto.km = params[:moto][:km]
        @moto.save!

        redirect_to moto_detail_path(@moto)
    end

    def destroy

        @moto.delete
        redirect_to dashboard_path
    end

    private

    def set_moto
        @moto = Moto.find(params[:moto_id])

    end

end
