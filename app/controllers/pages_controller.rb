class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @tshirt = Tshirt.new
  end
end
