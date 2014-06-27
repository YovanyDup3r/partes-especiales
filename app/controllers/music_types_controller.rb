class MusicTypesController < ApplicationController
  before_action :set_music_type, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /music_types
  # GET /music_types.json
  def index
    @music_types = MusicType.all
  end

  # GET /music_types/1
  # GET /music_types/1.json
  def show
  end

  # GET /music_types/new
  def new
    @music_type = MusicType.new
  end

  # GET /music_types/1/edit
  def edit
  end

  # POST /music_types
  # POST /music_types.json
  def create
    @music_type = MusicType.new(music_type_params)

    respond_to do |format|
      if @music_type.save
        format.html { redirect_to @music_type, notice: 'Music type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @music_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @music_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /music_types/1
  # PATCH/PUT /music_types/1.json
  def update
    respond_to do |format|
      if @music_type.update(music_type_params)
        format.html { redirect_to @music_type, notice: 'Music type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @music_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /music_types/1
  # DELETE /music_types/1.json
  def destroy
    @music_type.destroy
    respond_to do |format|
      format.html { redirect_to music_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_music_type
      @music_type = MusicType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def music_type_params
      params.require(:music_type).permit(:name)
    end
end
