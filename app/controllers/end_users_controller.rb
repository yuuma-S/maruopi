class EndUsersController < ApplicationController
  before_action :set_end_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_end_user!

  def index
    @end_users = EndUser.all
  end

  def new
  end

  def create
    @end_user = Question.new(question_params)

    respond_to do |format|
      if @end_user.save
        format.html { redirect_to @question, notice: 'End_user was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    
  end

  def edit
  end

  def update
    respond_to do |format|
      if @end_user.update(end_user_params)
        format.html { redirect_to @end_user, notice: 'End_user was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @end_user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @end_user.destroy
    respond_to do |format|
      format.html { redirect_to end_users_path, notice: 'End_user was successfully destroyed.' }
      format.json { head :no_content }
    end
    flash[:notice] = "end_userを削除しました。"
  end

  def follows
    end_user = EndUser.find(params[:id])
    @end_users = end_user.followings
  end

  def followers
    end_user = EndUser.find(params[:id])
    @end_users = end_user.followers
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_end_user
      @end_user = EndUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def end_user_params
      params.require(:end_user).permit(:name)
    end
end
