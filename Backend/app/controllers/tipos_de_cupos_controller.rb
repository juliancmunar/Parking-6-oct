class TiposDeCuposController < ApplicationController
  before_action :authenticate_user
  before_action :set_tipos_de_cupo, only: [:show, :update, :destroy]

  # GET /tipos_de_cupos
  def index
    @tipos_de_cupos = TiposDeCupo.all

    render json: @tipos_de_cupos
  end

  # GET /tipos_de_cupos/1
  def show
    render json: @tipos_de_cupo
  end

  # POST /tipos_de_cupos
  def create
    @tipos_de_cupo = TiposDeCupo.new(tipos_de_cupo_params)

    if @tipos_de_cupo.save
      render json: @tipos_de_cupo, status: :created, location: @tipos_de_cupo
    else
      render json: @tipos_de_cupo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tipos_de_cupos/1
  def update
    if @tipos_de_cupo.update(tipos_de_cupo_params)
      render json: @tipos_de_cupo
    else
      render json: @tipos_de_cupo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tipos_de_cupos/1
  def destroy
    @tipos_de_cupo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipos_de_cupo
      @tipos_de_cupo = TiposDeCupo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tipos_de_cupo_params
      params.require(:tipos_de_cupo).permit(:tipo_de_cupo)
    end
end
