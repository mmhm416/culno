class CropsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_crop, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]

  def index
    @crops = Crop.includes(:user).order('created_at DESC')
  end

  def new
    @crop = Crop.new
  end

  def create
    @crop = Crop.new(crop_params)
    if @crop.save
      redirect_to crops_path
    else
      render :new
    end
  end

  def show
    @message = Message.new
    @crop = Crop.find(params[:id])
    @messages = @crop.messages.includes(:user).order('created_at DESC')
  end

  def edit
  end

  def update
    if @crop.update(crop_params)
      redirect_to crop_path
    else
      render :edit
    end
  end

  def destroy
    @crop.destroy
    redirect_to root_path
  end

  def search
    @crops = Crop.search(params[:keyword])
  end


  private

  def crop_params
    params.require(:crop).permit(:item_name, :explanation, :category_id, :condition_id, :delivery_cost_id, :prefecture_id,
                                 :delivery_time_id, :price, :discontinued, images: []).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index if (current_user.id != @crop.user_id)
  end

  def set_crop
    @crop = Crop.find(params[:id])
  end


end
