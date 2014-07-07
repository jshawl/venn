class VsetsController < ApplicationController
  before_action :set_vset, only: [:show, :edit, :update, :destroy]

  # GET /vsets
  # GET /vsets.json
  def index
    @vsets = Vset.all
  end

  # GET /vsets/1
  # GET /vsets/1.json
  def show
  end

  # GET /vsets/new
  def new
    @vset = Vset.new
  end

  # GET /vsets/1/edit
  def edit
  end

  # POST /vsets
  # POST /vsets.json
  def create
    @vset = Vset.new(vset_params)

    respond_to do |format|
      if @vset.save
        format.html { redirect_to @vset, notice: 'Vset was successfully created.' }
        format.json { render :show, status: :created, location: @vset }
      else
        format.html { render :new }
        format.json { render json: @vset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vsets/1
  # PATCH/PUT /vsets/1.json
  def update
    respond_to do |format|
      if @vset.update(vset_params)
        format.html { redirect_to @vset, notice: 'Vset was successfully updated.' }
        format.json { render :show, status: :ok, location: @vset }
      else
        format.html { render :edit }
        format.json { render json: @vset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vsets/1
  # DELETE /vsets/1.json
  def destroy
    @vset.destroy
    respond_to do |format|
      format.html { redirect_to vsets_url, notice: 'Vset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vset
      @vset = Vset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vset_params
      params.require(:vset).permit(:name)
    end
end
