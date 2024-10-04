class VentadetallesController < ApplicationController
  before_action :set_ventadetalle, only: %i[ show edit update destroy ]

  # GET /ventadetalles or /ventadetalles.json
  def index
    @ventadetalles = Ventadetalle.all
  end

  # GET /ventadetalles/1 or /ventadetalles/1.json
  def show
  end

  # GET /ventadetalles/new
  def new
    @ventadetalle = Ventadetalle.new
  end

  # GET /ventadetalles/1/edit
  def edit
  end

  # POST /ventadetalles or /ventadetalles.json
  def create
    @ventadetalle = Ventadetalle.new(ventadetalle_params)

    respond_to do |format|
      if @ventadetalle.save
        format.html { redirect_to @ventadetalle, notice: "Ventadetalle was successfully created." }
        format.json { render :show, status: :created, location: @ventadetalle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ventadetalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ventadetalles/1 or /ventadetalles/1.json
  def update
    respond_to do |format|
      if @ventadetalle.update(ventadetalle_params)
        format.html { redirect_to @ventadetalle, notice: "Ventadetalle was successfully updated." }
        format.json { render :show, status: :ok, location: @ventadetalle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ventadetalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ventadetalles/1 or /ventadetalles/1.json
  def destroy
    @ventadetalle.destroy!

    respond_to do |format|
      format.html { redirect_to ventadetalles_path, status: :see_other, notice: "Ventadetalle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ventadetalle
      @ventadetalle = Ventadetalle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ventadetalle_params
      params.require(:ventadetalle).permit(:venta_id, :producto_id, :cantidad, :precio)
    end
end
