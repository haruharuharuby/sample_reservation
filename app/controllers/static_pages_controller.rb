class StaticPagesController < ApplicationController
  def home
    @staff = Staff.all
    @course = Course.all
    @user = User.all
  end
  
  def resevation

  end
end
