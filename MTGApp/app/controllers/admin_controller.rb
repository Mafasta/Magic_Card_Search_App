# @author Thomas Quinn Langsfeld
class AdminController < ApplicationController
  before_action :authenticate_admin!

  # @return [GeneralUser] the list of all registered users and admins
  def index
  	@users = GeneralUser.all
  end

  # deletes a specific user
  def destroy
  	@user = User.find(params[:user_id])
  	@user.delete!

  	redirect_to '/admin'
  end
end
