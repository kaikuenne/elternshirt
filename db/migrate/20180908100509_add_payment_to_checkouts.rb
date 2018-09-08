class AddPaymentToCheckouts < ActiveRecord::Migration[5.2]
  def change
    add_column :checkouts, :payment, :jsonb
  end
end
