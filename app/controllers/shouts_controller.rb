class ShoutsController < ApplicationController

  def show
    @shout = Shout.find(params[:id])
  end

  def create
    @shout = current_user.shouts.build(shout_params)
    if @shout.save
      flash[:notice] = "Shout successfully posted!"
      redirect_to dashboard_path
    else
      flash[:notice] = "Something went wrong :("
      redirect_to :back
    end
  end

  private
  def shout_params
    params.require(:shout).permit(:body)
  end
end
