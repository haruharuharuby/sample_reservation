class UsersController < ApplicationController
  before_action:set_current_user, only:[:show]

  def index
    @staff = Staff.all
    @user = User.all

  end

  # showアクションを追加してください
  def show
  end

  def set_current_user
    @current_user = User.find_by(params[:id])
  end

end
