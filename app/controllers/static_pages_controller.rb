class StaticPagesController < ApplicationController
  def home
  	@courses = current_user.courses
  end

  def welcome
  end
end
