class UsersController < ApplicationController
  before_action:set_current_user, only:[:show, :edit]

  def index
    @staff = Staff.all
    @user = User.all

  end

  # showアクションを追加してください
  def show
  end

  def edit
  end

  def set_current_user
    @current_user = User.find_by(id:params[:id])
  end

end
