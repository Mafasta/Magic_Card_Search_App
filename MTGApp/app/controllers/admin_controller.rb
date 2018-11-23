class AdminController < ApplicationController
  before_action :authenticate_admin!

  def index
  	@users = GeneralUser.all
  end

  def destroy
  	@user = User.find(params[:user_id])
  	@user.delete!

  	redirect_to '/admin'
  end
end
