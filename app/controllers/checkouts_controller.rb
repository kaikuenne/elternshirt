class CheckoutsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :new, :show]

  def index
  end

  def new

    @checkout = Checkout.new

    @tshirt = Tshirt.find(params[:tshirt_id])
    @checkout.tshirt_id = @tshirt.id

    @checkout.picture_front = "Front"
    @checkout.picture_back = "Back"
    @checkout.price = "1995"

    @checkout.status = "Initialized"

    @checkout.id_encrypted = SecureRandom.urlsafe_base64


    @checkout.save

    puts @checkout.id
    puts @checkout.id_encrypted

    redirect_to checkout_path(@checkout.id_encrypted)
  end

  def show
    @checkout = Checkout.find_by_id_encrypted(params["id_encrypted"])

  end


end
