class PaymentsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_vars

  def new
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,
      amount:       @checkout.price_cents,
      description:  "Bezahlung für Elternshirt #{@checkout.tshirt.id} für Bestellung #{@checkout.id}",
      currency:     @checkout.price.currency
    )

    @user.stripeid = customer.id

    @checkout.update(payment: charge.to_json, status: 'paid')
    redirect_to successful_order_path(@checkout)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_order_path(@checkout)

  raise
  end

private
  def set_vars
    # @checkout = current_user.checkouts.where(status: 'pending').find(params[:checkout_id])

    @checkout = Checkout.find(params[:checkout_id_encrypted])
    @user = @checkout.user
  end

end
