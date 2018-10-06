class TarifasController < ApplicationController
  before_action :authenticate_user
  before_action :set_tarifa, only: [:show, :update, :destroy]

  # GET /tarifas
  def index
    @tarifas = Tarifa.all

    render json: @tarifas
  end

  # GET /tarifas/1
  def show
    render json: @tarifa
  end

  # POST /tarifas
  def create
    @tarifa = Tarifa.new(tarifa_params)

    if @tarifa.save
      render json: @tarifa, status: :created, location: @tarifa
    else
      render json: @tarifa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tarifas/1
  def update
    if @tarifa.update(tarifa_params)
      render json: @tarifa
    else
      render json: @tarifa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tarifas/1
  def destroy
    @tarifa.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarifa
      @tarifa = Tarifa.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tarifa_params
      params.require(:tarifa).permit(:parqueadero_id, :tipo_de_cupo_id, :valor_minuto, :descripcion)
    end
end
