class UsersController < ApplicationController

  def index
    @user = User.all
    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])
    @photos = @user.photos
    render("users/show.html.erb")
  end

end
