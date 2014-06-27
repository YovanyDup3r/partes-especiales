class PostulatesController < ApplicationController
  before_action :set_postulate, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /postulates
  # GET /postulates.json
  def index
    @postulates = Postulate.all
  end

  # GET /postulates/1
  # GET /postulates/1.json
  def show
  end

  # GET /postulates/new
  def new
    @postulate = Postulate.new
  end

  # GET /postulates/1/edit
  def edit
  end

  # POST /postulates
  # POST /postulates.json
  def create
    @postulate = Postulate.new(postulate_params)

    respond_to do |format|
      if @postulate.save
        format.html { redirect_to @postulate, notice: 'Postulate was successfully created.' }
        format.json { render action: 'show', status: :created, location: @postulate }
      else
        format.html { render action: 'new' }
        format.json { render json: @postulate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postulates/1
  # PATCH/PUT /postulates/1.json
  def update
    respond_to do |format|
      if @postulate.update(postulate_params)
        format.html { redirect_to @postulate, notice: 'Postulate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @postulate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postulates/1
  # DELETE /postulates/1.json
  def destroy
    @postulate.destroy
    respond_to do |format|
      format.html { redirect_to postulates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postulate
      @postulate = Postulate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postulate_params
      params.require(:postulate).permit(:user_id, :church_id, :music_type_id, :date, :music_name)
    end
end
