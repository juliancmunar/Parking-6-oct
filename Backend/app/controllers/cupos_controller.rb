class CuposController < ApplicationController
  before_action :authenticate_user
  before_action :set_cupo, only: [:show, :update, :destroy]

  # GET /cupos
  def index
    @cupos = Cupo.all

    render json: @cupos
  end

  # GET /cupos/1
  def show
    render json: @cupo
  end

  # POST /cupos
  def create
    @cupo = Cupo.new(cupo_params)

    if @cupo.save
      render json: @cupo, status: :created, location: @cupo
    else
      render json: @cupo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cupos/1
  def update
    if @cupo.update(cupo_params)
      render json: @cupo
    else
      render json: @cupo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cupos/1
  def destroy
    @cupo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cupo
      @cupo = Cupo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cupo_params
      params.require(:cupo).permit(:parqueadero_id, :tipo_de_cupo_id, :cantidad)
    end
end
