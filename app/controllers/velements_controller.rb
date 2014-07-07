class VelementsController < ApplicationController
  before_action :set_velement, only: [:show, :edit, :update, :destroy]

  # GET /velements
  # GET /velements.json
  def index
    @velements = Velement.all
  end

  # GET /velements/1
  # GET /velements/1.json
  def show
  end

  # GET /velements/new
  def new
    @velement = Velement.new
  end

  # GET /velements/1/edit
  def edit
  end

  # POST /velements
  # POST /velements.json
  def create
    @velement = Velement.new(velement_params)

    respond_to do |format|
      if @velement.save
        format.html { redirect_to @velement, notice: 'Velement was successfully created.' }
        format.json { render :show, status: :created, location: @velement }
      else
        format.html { render :new }
        format.json { render json: @velement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /velements/1
  # PATCH/PUT /velements/1.json
  def update
    respond_to do |format|
      if @velement.update(velement_params)
        format.html { redirect_to @velement, notice: 'Velement was successfully updated.' }
        format.json { render :show, status: :ok, location: @velement }
      else
        format.html { render :edit }
        format.json { render json: @velement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /velements/1
  # DELETE /velements/1.json
  def destroy
    @velement.destroy
    respond_to do |format|
      format.html { redirect_to velements_url, notice: 'Velement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_velement
      @velement = Velement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def velement_params
      params.require(:velement).permit(:name)
    end
end
