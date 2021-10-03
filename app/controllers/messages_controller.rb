class MessagesController < ApplicationController

  def create
    message = Message.create(message_params)
    redirect_to "/crops/#{message.crop.id}"
  end

  private
  def message_params
    params.require(:message).permit(:comment, :image).merge(user_id: current_user.id, crop_id: params[:crop_id])
  end
end
