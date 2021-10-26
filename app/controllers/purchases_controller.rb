class PurchasesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_crop
  before_action :move_to_root_path

  def index
    @user = User.find(current_user.id)
    @address = Address.where(user_id: current_user.id)
    @purchase = Purchase.new
  end

  def create
    @user = User.find(current_user.id)
    @address = Address.where(user_id: current_user.id)
    @purchase = Purchase.new(purchase_params)
    if @purchase.valid?
      pay_item
      @purchase.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def purchase_params
    params.require(:purchase).permit(:quantity, :address_id).merge(user_id: current_user.id, crop_id: params[:crop_id],token: params[:token], price: @crop.price )
  end
  
  def pay_item
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    amount = @crop.price * @purchase.quantity
    Payjp::Charge.create(
      amount: amount,
      card: purchase_params[:token],
      currency: 'jpy'
    )
  end

  def move_to_root_path
    redirect_to root_path if (current_user.addresses.blank?)
  end

  def set_crop
    @crop = Crop.find(params[:crop_id])
  end

  

end
