class XitiesController < ApplicationController
  before_action :set_xity, only: [:show, :edit, :update, :destroy]

  # GET /xities
  # GET /xities.json
  def index
    @xities = Xity.all
  end

  # GET /xities/1
  # GET /xities/1.json
  def show
  end

  # GET /xities/new
  def new
    @xity = Xity.new
  end

  # GET /xities/1/edit
  def edit
  end

  # POST /xities
  # POST /xities.json
  def create
    @xity = Xity.new(xity_params)

    respond_to do |format|
      if @xity.save
        format.html { redirect_to @xity, notice: 'Xity was successfully created.' }
        format.json { render :show, status: :created, location: @xity }
      else
        format.html { render :new }
        format.json { render json: @xity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /xities/1
  # PATCH/PUT /xities/1.json
  def update
    respond_to do |format|
      if @xity.update(xity_params)
        format.html { redirect_to @xity, notice: 'Xity was successfully updated.' }
        format.json { render :show, status: :ok, location: @xity }
      else
        format.html { render :edit }
        format.json { render json: @xity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xities/1
  # DELETE /xities/1.json
  def destroy
    @xity.destroy
    respond_to do |format|
      format.html { redirect_to xities_url, notice: 'Xity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xity
      @xity = Xity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def xity_params
      params.require(:xity).permit(:city_name, :country_id, :product_name, :bphone, :description, :alamat, :user_id)
    end
end
