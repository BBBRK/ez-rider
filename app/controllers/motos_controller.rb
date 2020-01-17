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

        @operations = Operation.all.order(id: "ASC")
        @entretien = Entretien.new
        @historique = Entretien.all.where(moto_id: @moto.id)

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

    def add_photo
        # @moto.photo = params[:moto][:photo]
        # @moto.save!
        puts "boupe"
        puts "boupe"
        puts "boupe"
        puts "boupe"
        puts "boupe"
        
    end

    private

    def set_moto

        @moto = Moto.find(params[:moto_id])
    end

end
