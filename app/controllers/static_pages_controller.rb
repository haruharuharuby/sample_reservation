class StaticPagesController < ApplicationController
  def home
    @facility = Facility.all
    @staff = Staff.all
    @course = Course.all
  end

  def about
  end

  def resevation
  end
end
