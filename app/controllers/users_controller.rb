class UsersController < ApplicationController
  before_action:set_current_user, {only: [:show, :edit, :update, :reshistory, :mathistory]}
  def index
    @staff = Staff.all
    @user = User.all

  end

  # showアクションを追加してください
  def show
  end

  def edit
  end

  def update
    if @current_user
      flash[:notice] = "更新しました"
      redirect_to 'show'
    else
      render 'edit'
    end
  end

  def reshistory
  end

  def mathistory
  end

end
