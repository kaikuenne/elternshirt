class TshirtsController < ApplicationController

  skip_before_action :authenticate_user! #, only: [:new, :show, :create]


  def create
    @tshirt = Tshirt.new(tshirt_params)
    @tshirt.birth_date = params[:birth_date]
    @tshirt.user = current_user


# raise

    if @tshirt.save
      respond_to do |format|
        format.html { render "tshirts/show" }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render "tshirts/new" }
        format.js  # <-- idem
      end
    end
  end

  def show
    @tshirt = Tshirt.new(tshirt_params)
  end

  def update
    @tshirt = Tshirt.find(params[:id])
    @tshirt.update(tshirt_update_params)

    redirect_to new_checkout_path(@tshirt)
  end

private

  def tshirt_params
    params.require(:tshirt).permit(:gender, :child_name)
  end

  def tshirt_update_params
    params.require(:tshirt).permit(:color, :size, :back1, :back2)
  end
end
