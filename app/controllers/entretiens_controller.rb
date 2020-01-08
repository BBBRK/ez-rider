class EntretiensController < ApplicationController

    before_action :set_moto

    def create

        entretien = Entretien.new
        entretien.operation_id = params[:entretien][:operation_id]
        entretien.date = params[:entretien][:date]
        entretien.km = params[:entretien][:km]
        entretien.description = params[:entretien][:description]
        entretien.prix = params[:entretien][:prix]
        entretien.moto_id = @moto.id

        entretien.save!

        redirect_to moto_detail_path(@moto)
    end

    private

    def set_moto
        @moto = Moto.find(params[:moto_id])

    end
end
