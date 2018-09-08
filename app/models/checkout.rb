class Checkout < ApplicationRecord
  belongs_to :tshirt
  belongs_to :user, optional: true

  monetize :price_cents

end
