class PostOrderJob < ApplicationJob
  queue_as :default

  def perform(id)


    @checkout = Checkout.find(id)

    uri = URI.parse("https://api.printful.com/orders")

    header = {"Authorization": "Basic #{ENV['PRINTFUL_API_KEY_ENCRYPTED']}"}
    user = {
      "recipient": {
          "name": "John Doe",
          "address1": "19749 Dearborn St",
          "city": "Chatsworth",
          "state_code": "CA",
          "country_code": "US",
          "zip": "91311"
      },
      "items": [{
          "variant_id": 1,
          "quantity": 1,
          "files": [{
              "url": "http://example.com/files/posters/poster_1.jpg"
          }]
      }]
    }

  end
end
