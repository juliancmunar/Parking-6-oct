class TipoDePlansController < ApplicationController
  before_action :authenticate_user
  before_action :set_tipo_de_plan, only: [:show, :update, :destroy]

  # GET /tipo_de_plans
  def index
    @tipo_de_plans = TipoDePlan.all

    render json: @tipo_de_plans
  end

  # GET /tipo_de_plans/1
  def show
    render json: @tipo_de_plan
  end

  # POST /tipo_de_plans
  def create
    @tipo_de_plan = TipoDePlan.new(tipo_de_plan_params)

    if @tipo_de_plan.save
      render json: @tipo_de_plan, status: :created, location: @tipo_de_plan
    else
      render json: @tipo_de_plan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tipo_de_plans/1
  def update
    if @tipo_de_plan.update(tipo_de_plan_params)
      render json: @tipo_de_plan
    else
      render json: @tipo_de_plan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tipo_de_plans/1
  def destroy
    @tipo_de_plan.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_de_plan
      @tipo_de_plan = TipoDePlan.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tipo_de_plan_params
      params.require(:tipo_de_plan).permit(:tipo_de_plan)
    end
end
