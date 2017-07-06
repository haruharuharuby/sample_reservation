class StaticPagesController < ApplicationController
  def home
    @facility = Facility.all
    @staff = Staff.all
  end

  def about
  end

  def resevation
  end
end
