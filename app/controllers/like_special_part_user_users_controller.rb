class LikeSpecialPartUserUsersController < ApplicationController
  before_action :set_like_special_part_user_user, only: [:show, :edit, :update, :destroy]

  # GET /like_special_part_user_users
  # GET /like_special_part_user_users.json
  def index
    @like_special_part_user_users = LikeSpecialPartUserUser.all
  end

  # GET /like_special_part_user_users/1
  # GET /like_special_part_user_users/1.json
  def show
  end

  # GET /like_special_part_user_users/new
  def new
    @like_special_part_user_user = LikeSpecialPartUserUser.new
  end

  # GET /like_special_part_user_users/1/edit
  def edit
  end

  # POST /like_special_part_user_users
  # POST /like_special_part_user_users.json
  def create
    @like_special_part_user_user = LikeSpecialPartUserUser.new(like_special_part_user_user_params)

    respond_to do |format|
      if @like_special_part_user_user.save
        format.html { redirect_to @like_special_part_user_user, notice: 'Like special part user user was successfully created.' }
        format.json { render action: 'show', status: :created, location: @like_special_part_user_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @like_special_part_user_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /like_special_part_user_users/1
  # PATCH/PUT /like_special_part_user_users/1.json
  def update
    respond_to do |format|
      if @like_special_part_user_user.update(like_special_part_user_user_params)
        format.html { redirect_to @like_special_part_user_user, notice: 'Like special part user user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @like_special_part_user_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /like_special_part_user_users/1
  # DELETE /like_special_part_user_users/1.json
  def destroy
    @like_special_part_user_user.destroy
    respond_to do |format|
      format.html { redirect_to like_special_part_user_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_like_special_part_user_user
      @like_special_part_user_user = LikeSpecialPartUserUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def like_special_part_user_user_params
      params.require(:like_special_part_user_user).permit(:special_part_id, :church_id, :user_id, :like)
    end
end
