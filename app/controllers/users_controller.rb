class UsersController < ApplicationController
  def destroy
    @user = current_user
    @user.destroy
    redirect_to events_path
  end
end
