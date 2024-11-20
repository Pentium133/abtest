class ExperementsController < ApplicationController
  # GET /experements
  def index
    device = request.headers["Device-Token"]

    @experements = Experement.includes(:experement_options).all

    render json: @experements, include: :experement_options
  end
end
