class OppsController < ApplicationController
  before_action :set_opp, only: [:show, :update, :destroy]

  # GET /opps
  def index
    @opps = Opp.all

    render json: @opps
  end

  # GET /opps/1
  def show
    render json: @opp
  end

  # POST /opps
  def create
    @opp = Opp.new(opp_params)

    if @opp.save
      render json: @opp, status: :created, location: @opp
    else
      render json: @opp.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /opps/1
  def update
    if @opp.update(opp_params)
      render json: @opp
    else
      render json: @opp.errors, status: :unprocessable_entity
    end
  end

  # DELETE /opps/1
  def destroy
    @opp.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opp
      @opp = Opp.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def opp_params
      params.require(:opp).permit(:title, :opp_type, :opp_description, :more_info)
    end
end
