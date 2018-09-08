require 'money'

class CheckoutsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :new, :show, :order, :success]

  def index
  end

  def new
    @checkout = Checkout.new

    @tshirt = Tshirt.find(params[:tshirt_id])
    @checkout.tshirt_id = @tshirt.id

    @checkout.picture_front = "Front"
    @checkout.picture_back = "Back"
    @checkout.price = Money.new(1995, "EUR")

    @checkout.status = "pending"

    @checkout.id_encrypted = SecureRandom.urlsafe_base64

    @checkout.save

    puts @checkout.id
    puts @checkout.id_encrypted

    redirect_to checkout_path(@checkout.id_encrypted)
  end

  def show
    @checkout = Checkout.find_by_id_encrypted(params["id_encrypted"])
    @user = User.new()
    @checkout.user = @user
  end

  def order
    @checkout = Checkout.find(params[:id])
    @user = User.new(user_params)
    @user.country_code = "DE"
    @user.save

    @checkout.user = @user

    # raise
    @checkout.save

    # PostOrderJob.perform_later(@checkout.id)
  end

  def success
    @checkout = Checkout.find(params[:id])

  end



  private

  def user_params
    p = params.require(:checkout).permit!

    @user_params = p[:user]
  end

end
