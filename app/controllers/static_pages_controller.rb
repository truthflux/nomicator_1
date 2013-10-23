class StaticPagesController < ApplicationController
  def home
    @activity_log = current_user.activity_logs.build if signed_in?
  end

  def help
  end

  def about
  end

  def contact
  end
end
