class AddressesController < ApplicationController
  def new
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)
    if @address.save
      redirect_to root_path
    else
      render :new
    end
  end
end


private
def address_params
  params.require(:address).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :zip_code, :prefecture_id, :city, :addresses, :building,
    :phone_no).merge(user_id: current_user.id)
end