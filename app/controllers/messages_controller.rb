class MessagesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :create]
  before_action :set_message, only: [:edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]

  def create
    message = Message.create(message_params)
    redirect_to "/crops/#{message.crop.id}"
  end

  def destroy
    @message = Message.find(params[:id])
    @crop = @message.crop
    @message.destroy
    redirect_to "/crops/#{@crop.id}"
  end

  def edit
    @message = Message.find(params[:id])
    @crop = @message.crop
  end

  def update
    @crop = @message.crop
    if @message.update(message_params)
      redirect_to "/crops/#{@crop.id}"
    else
      render :edit
    end
  end



  private
  def message_params
    params.require(:message).permit(:comment, :image).merge(user_id: current_user.id, crop_id: params[:crop_id])
  end

  def set_message
    @message = Message.find(params[:id])
  end

  def move_to_index
  redirect_to root_path if (current_user.id != @message.user_id)
  end

end

