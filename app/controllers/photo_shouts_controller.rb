class PhotoShoutsController < ApplicationController

  def create
    content = build_content
    @shout = current_user.shouts.build(content: content)
    if @shout.save
      flash[:notice] = "Photo shout successfully posted!"
      redirect_to dashboard_path
    else
      flash[:notice] = "Something went wrong :("
      redirect_to :back
    end
  end

  private
  def build_content
    PhotoShout.new(photo_shout_params)
  end

  def photo_shout_params
    params.require(:photo_shout).permit(:image)
  end
end
