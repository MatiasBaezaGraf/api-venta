class VentaController < ApplicationController
  before_action :set_ventum, only: %i[ show update destroy ]

  # GET /venta
  def index
    @venta = Ventum.all

    render json: @venta
  end

  # GET /venta/1
  def show
    render json: @ventum
  end

  # POST /venta
  def create
    @ventum = Ventum.new(ventum_params)

    if @ventum.save
      render json: @ventum, status: :created, location: @ventum
    else
      render json: @ventum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /venta/1
  def update
    if @ventum.update(ventum_params)
      render json: @ventum
    else
      render json: @ventum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /venta/1
  def destroy
    @ventum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ventum
      @ventum = Ventum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ventum_params
      params.require(:ventum).permit(:fecha, :crypto, :cantidad)
    end
end
