class PostOrderJob < ApplicationJob
  queue_as :default

  def perform(id)


    @checkout = Checkout.find(id)
    @user = Checkout.user
    @tshirt = Checkout.tshirt

    @tshirt.printful_variant = Printful.where(color: @tshirt.color).where(size: @tshirt.size).first.variant_id

    uri = URI.parse("https://api.printful.com/orders")

    header = {"Authorization": `Basic #{ENV['PRINTFUL_API_KEY_ENCRYPTED']}`}
    user = {
      "recipient": {
          "name": @user.name,
          "address1": @user.address1,
          "city": @user.city,
          "country_code": @user.country_code,
          "zip": @user.zip
      },
      "items": [{
          "variant_id": @tshirt.printful_variant,
          "quantity": 1,
          "files": [{
              "url": "http://example.com/files/posters/poster_1.jpg"
          }]
      }]
    }

  end
end
