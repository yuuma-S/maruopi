class Admin::EndUserController < ApplicationController
  before_action :set_end_user, only: [:show,  :destroy]
  before_action :authenticate_end_user!
  def index
  	@end_users = EndUser.all
  end

  def show
  end

  def destroy
  	def destroy
    @end_user.destroy
    respond_to do |format|
      format.html { redirect_to end_users_path, notice: 'End_user was successfully destroyed.' }
      format.json { head :no_content }
    end
    flash[:notice] = "end_userを退会させました。"
  end
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
