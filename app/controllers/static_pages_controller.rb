class StaticPagesController < ApplicationController
  before_action:set_target, {only: [:reservation]}

  def home
    @staff = Staff.all
    @course = Course.all
    @user = User.all

    @details = Reservationframe.includes(:facility, :course, :staff)
  end

  def search
  end

  def about
    @target = Reservationframe.includes(:facility, :course, :staff)
              .where(id:params[:id]).first
    @details = Reservation.includes(:reservationframe, :user)
              .where(flag: true,reservationframe_id:params[:id])
  end


  def reservation
    @current_user = User.find_by(id:params[:search])
  end

  def create
    @current_user = User.find_by(id:params[:users][:id])
    if @current_user.valid?
        redirect_to("/about/#{@taeger.id}")
    else
      @users = User.new(user_params)
      if @users.save
        flash[:notice] = "登録しました"
        redirect_to("/about/#{@taeger.id}")
      else
       render "reservation/#{@taeger.id}"
      end
    end
  end

  private

  def set_target
    @target = Reservationframe.includes(:facility, :course, :staff)
              .where(id:params[:id]).first
  end

  def user_params
    params.require(:users).permit(:name, :tel, :mail)
  end

  def reservation_params
    params[reservationframe_id:@target.id, user_id:@users.id,flag:true, status:true]
  end
end
