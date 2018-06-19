class CreateCheckouts < ActiveRecord::Migration[5.2]
  def change
    create_table :checkouts do |t|
      t.references :user, foreign_key: true, index: true
      t.references :tshirt, foreign_key: true, index: true
      t.bigint :price
      t.string :picture_front
      t.string :picture_back
      t.string :status
    end
  end
end
