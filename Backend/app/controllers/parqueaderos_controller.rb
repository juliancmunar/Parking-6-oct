class ParqueaderosController < ApplicationController
  before_action :authenticate_user
  before_action :set_parqueadero, only: [:show, :update, :destroy]

  # GET /parqueaderos
  def index
    @parqueaderos = Parqueadero.all

    render json: @parqueaderos
  end

  # GET /parqueaderos/1
  def show
    render json: @parqueadero
  end

  # POST /parqueaderos
  def create
    @parqueadero = Parqueadero.new(parqueadero_params)

    if @parqueadero.save
      render json: @parqueadero, status: :created, location: @parqueadero
    else
      render json: @parqueadero.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parqueaderos/1
  def update
    if @parqueadero.update(parqueadero_params)
      render json: @parqueadero
    else
      render json: @parqueadero.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parqueaderos/1
  def destroy
    @parqueadero.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parqueadero
      @parqueadero = Parqueadero.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def parqueadero_params
      params.require(:parqueadero).permit(:nombre, :direccion, :servicios_adicionales, :caracteristicas, :condiciones, :calificacion, :email, :telefono1, :telefono2)
    end
end
