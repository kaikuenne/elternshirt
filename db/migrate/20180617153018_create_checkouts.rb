class CreateCheckouts < ActiveRecord::Migration[5.2]
  def change
    create_table :checkouts do |t|
      t.string :id_encrypted
      t.references :user, foreign_key: true, index: true
      t.references :tshirt, foreign_key: true, index: true
      t.bigint :price_cents
      t.string :picture_front
      t.string :picture_back
      t.string :status
    end
  end
end
