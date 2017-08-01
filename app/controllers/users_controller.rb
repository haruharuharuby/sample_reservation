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
    @count = 0
    if @current_user.tel != params[:tel]
      @current_user.tel = params[:tel]
      @count += 1
    end
    if @current_user.mail != params[:mail]
      @current_user.mail = params[:mail]
      @count += 1
    end

    if @count >= 1
      if  @current_user.save
        flash[:notice] = "更新しました"
        redirect_to("/users/#{@current_user.id}")
      else
        render 'edit'
      end
    else
      redirect_to("/users/#{@current_user.id}")
    end
  end

  def reshistory
  end

  def mathistory
     @items= Purchase.left_outer_joins(:material)
      .select("purchases.*, materials.*")
      .where(purchases: {user_id: @current_user.id})
      .order(id: :desc)
  end

end
