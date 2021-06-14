class EnsayosController < ApplicationController
  before_action :set_ensayo, only: %i[ show edit update destroy ]

  # GET /ensayos or /ensayos.json
  def index
    @ensayos = Ensayo.all
    @ensayos = @ensayos.order(:name).page(params[:page] || 1)
  end

  # GET /ensayos/1 or /ensayos/1.json
  def show
  end

  # GET /ensayos/new
  def new
    @ensayo = Ensayo.new
  end

  # GET /ensayos/1/edit
  def edit
  end

  # POST /ensayos or /ensayos.json
  def create
    @ensayo = Ensayo.new(ensayo_params)

    respond_to do |format|
      if @ensayo.save
        format.html { redirect_to @ensayo, notice: "Ensayo was successfully created." }
        format.json { render :show, status: :created, location: @ensayo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ensayo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ensayos/1 or /ensayos/1.json
  def update
    respond_to do |format|
      if @ensayo.update(ensayo_params)
        format.html { redirect_to @ensayo, notice: "Ensayo was successfully updated." }
        format.json { render :show, status: :ok, location: @ensayo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ensayo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ensayos/1 or /ensayos/1.json
  def destroy
    @ensayo.destroy
    respond_to do |format|
      format.html { redirect_to ensayos_url, notice: "Ensayo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ensayo
      @ensayo = Ensayo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ensayo_params
      params.require(:ensayo).permit(:name)
    end
end
