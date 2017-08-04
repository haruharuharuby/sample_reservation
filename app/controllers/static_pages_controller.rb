class StaticPagesController < ApplicationController
  def home
    @staff = Staff.all
    @course = Course.all
    @user = User.all
  end

  def search
  end

  def about
    @target = Reservationframe.includes(:facility, :course, :staff)
              .where(id:1).first
    @details = Reservation.includes(:reservationframe, :user)
              .where(flag: true,reservationframe_id: 1)

  end

  def resevation

  end
end
