class VideoRatingsController < ApplicationController
  def create
    if params[:video_id]
      redirect_to video_path(params[:video_id]), notice: 'Thanks for rating!'
    else
      head :bad_request
    end
  end
end