class MylikesController < ApplicationController

  def index
    @mylikes = Photo.where({:user_id => "current_user.id"})
    render("/mylikes/index.html.erb")
  end

end
