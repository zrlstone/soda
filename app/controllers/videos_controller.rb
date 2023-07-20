class VideosController < ApplicationController
  def show
    @video = OpenStruct.new(id: params[:id],
                            artist_id: rand(100),
                            name: "Music Video #{params[:id]}")
  end

  def index 
    @videos = [
      OpenStruct.new(id: 1, name: 'Waves'),
      OpenStruct.new(id: 2, name: '15 Step')
    ]
  end
end
