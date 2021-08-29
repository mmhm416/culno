class GoodsController < ApplicationController

  def index
    @crops = Crop.where(user_id: params[:user_id])
    @user = User.find_by(id: params[:user_id])
  end

end
