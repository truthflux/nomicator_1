class ActivityLogsController < ApplicationController
  before_filter :signed_in_user

  def create
    @activity_log = current_user.activity_logs.build(params[:activity_log])
    if @activity_log.save
      flash[:success] =  "Message Posted"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end
end