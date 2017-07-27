class StaticPagesController < ApplicationController
  def home
    @facility = Facility.all
    @staff = Staff.all
    @course = Course.all
  end

  def about
    @staff = Staff.all
  end

  def resevation
  end
end
