class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
  end

  def new
    @video = current_user.videos.new
  end

  def create
    @video = current_user.videos.new(video_params)
  
    if @video.save
      redirect_to @video
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  
  def video_params
    params.require(:video).permit(:title, :url, :author_id)
  end
end
