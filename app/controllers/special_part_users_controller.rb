class SpecialPartUsersController < ApplicationController
  before_action :set_special_part_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /special_part_users
  # GET /special_part_users.json
  def index
    @special_part_users = SpecialPartUser.all
  end

  # GET /special_part_users/1
  # GET /special_part_users/1.json
  def show
  end

  # GET /special_part_users/new
  def new
    @special_part_user = SpecialPartUser.new
  end

  # GET /special_part_users/1/edit
  def edit
  end

  # POST /special_part_users
  # POST /special_part_users.json
  def create
    @special_part_user = SpecialPartUser.new(special_part_user_params)

    respond_to do |format|
      if @special_part_user.save
        format.html { redirect_to @special_part_user, notice: 'Special part user was successfully created.' }
        format.json { render action: 'show', status: :created, location: @special_part_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @special_part_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /special_part_users/1
  # PATCH/PUT /special_part_users/1.json
  def update
    respond_to do |format|
      if @special_part_user.update(special_part_user_params)
        format.html { redirect_to @special_part_user, notice: 'Special part user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @special_part_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /special_part_users/1
  # DELETE /special_part_users/1.json
  def destroy
    @special_part_user.destroy
    respond_to do |format|
      format.html { redirect_to special_part_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_special_part_user
      @special_part_user = SpecialPartUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def special_part_user_params
      params.require(:special_part_user).permit(:special_part_id, :user_id, :comment)
    end
end
