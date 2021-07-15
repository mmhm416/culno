class TopsController < ApplicationController

  def index
    @crops = Crop.includes(:user).order('created_at DESC')
  end

  
end
