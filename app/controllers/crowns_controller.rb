class CrownsController < ApplicationController
  before_action :set_crown, only: [:show, :edit, :update, :destroy]

  # GET /crowns
  # GET /crowns.json
  def index
    @crowns = Crown.all
  end

  # GET /crowns/1
  # GET /crowns/1.json
  def show
  end

  # GET /crowns/new
  def new
    @crown = Crown.new
  end

  # GET /crowns/1/edit
  def edit
  end

  # POST /crowns
  # POST /crowns.json
  def create
    @crown = Crown.new(crown_params)

    respond_to do |format|
      if @crown.save
        format.html { redirect_to @crown, notice: 'Crown was successfully created.' }
        format.json { render action: 'show', status: :created, location: @crown }
      else
        format.html { render action: 'new' }
        format.json { render json: @crown.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crowns/1
  # PATCH/PUT /crowns/1.json
  def update
    respond_to do |format|
      if @crown.update(crown_params)
        format.html { redirect_to @crown, notice: 'Crown was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /crowns/1
  # DELETE /crowns/1.json
  def destroy
    @crown.destroy
    respond_to do |format|
      format.html { redirect_to crowns_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crown
      @crown = Crown.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crown_params
      params.require(:crown).permit(:name, :description, :price)
    end
end
