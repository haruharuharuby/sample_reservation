class StaticPagesController < ApplicationController
  def home
    @facility = Facility.all
    @staff = Staff.all
    @course = Course.all
    @user = User.all
  end
  def resevation

  end
end
