class TextShoutsController < ApplicationController

  def create
    content = build_content
    @shout = current_user.shouts.build(content: content)
    if @shout.save
      flash[:notice] = "Text shout successfully posted!"
      redirect_to dashboard_path
    else
      flash[:notice] = "Something went wrong :("
      redirect_to :back
    end
  end

  private

  def build_content
    TextShout.new(text_shout_params)
  end

  def text_shout_params
    params.require(:text_shout).permit(:body)
  end
end
