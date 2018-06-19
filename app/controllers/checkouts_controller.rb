class CheckoutsController < ApplicationController
  def index
    @checkout = Checkout.find_by_user_id(current_user.id)
  end

  def new
    @checkout = Checkout.new

    @tshirt = Tshirt.find(params[:tshirt_id])
    @checkout.tshirt_id = @tshirt.id

    @checkout.picture_front = "Front"
    @checkout.picture_back = "Back"
    @checkout.price = "1995"

    @checkout.user_id = current_user.id
    @checkout.status = "Initialized"

    @checkout.save

    redirect_to checkouts_path
  end


end
