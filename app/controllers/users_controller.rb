class UsersController < ApplicationController

  def show
    @user = current_user
    @shouts = @user.shouts
  end
end
