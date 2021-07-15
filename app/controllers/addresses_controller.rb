class AddressesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_address, only: [:edit, :update, :index]
  before_action :move_to_index, only: [:edit, :update, :index]

  def new
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)
    if @address.save
      redirect_to user_path(current_user.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @address.update(address_params)
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  def index
  end

end


private
def address_params
  params.require(:address).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :zip_code, :prefecture_id, :city, :addresses, :building,
    :phone_no).merge(user_id: current_user.id)
end

def set_address
  @address = Address.where(user_id: params[:user_id])
  @address_mono = Address.find_by(user_id: params[:user_id])
end

def move_to_index
  redirect_to root_path if (current_user.id != @address_mono.user_id)
end

