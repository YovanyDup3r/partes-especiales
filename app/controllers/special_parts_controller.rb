class SpecialPartsController < ApplicationController
  before_action :set_special_part, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /special_parts
  # GET /special_parts.json
  def index
    @special_parts = SpecialPart.all
  end

  # GET /special_parts/1
  # GET /special_parts/1.json
  def show
  end

  # GET /special_parts/new
  def new
    @special_part = SpecialPart.new
  end

  # GET /special_parts/1/edit
  def edit
  end

  # POST /special_parts
  # POST /special_parts.json
  def create
    @special_part = SpecialPart.new(special_part_params)

    respond_to do |format|
      if @special_part.save
        format.html { redirect_to @special_part, notice: 'Special part was successfully created.' }
        format.json { render action: 'show', status: :created, location: @special_part }
      else
        format.html { render action: 'new' }
        format.json { render json: @special_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /special_parts/1
  # PATCH/PUT /special_parts/1.json
  def update
    respond_to do |format|
      if @special_part.update(special_part_params)
        format.html { redirect_to @special_part, notice: 'Special part was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @special_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /special_parts/1
  # DELETE /special_parts/1.json
  def destroy
    @special_part.destroy
    respond_to do |format|
      format.html { redirect_to special_parts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_special_part
      @special_part = SpecialPart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def special_part_params
      params.require(:special_part).permit(:church_id, :user_id, :video_url, :audio_url)
    end
end
