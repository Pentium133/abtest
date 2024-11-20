class ExperementsController < ApplicationController
  before_action :set_experement, only: %i[ show update destroy ]

  # GET /experements
  def index
    device = request.headers["Device-Token"]

    # render json: { device: device }
    @experements = Experement.includes(:experement_options).all

    render json: @experements, include: :experement_options
  end



  # GET /experements/1/for_device
  def for_device

  end

  # GET /experements/1
  def show
    render json: @experement
  end

  # POST /experements
  def create
    @experement = Experement.new(experement_params)

    if @experement.save
      render json: @experement, status: :created, location: @experement
    else
      render json: @experement.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /experements/1
  def update
    if @experement.update(experement_params)
      render json: @experement
    else
      render json: @experement.errors, status: :unprocessable_entity
    end
  end

  # DELETE /experements/1
  def destroy
    @experement.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experement
      @experement = Experement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def experement_params
      params.require(:experement).permit(:name)
    end
end
