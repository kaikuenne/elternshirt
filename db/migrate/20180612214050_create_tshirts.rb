class CreateTshirts < ActiveRecord::Migration[5.2]
  def change
    create_table :tshirts do |t|
      t.string :gender
      t.string :child_name
      t.references :user, index: true, foreign_key: true
      t.date :birth_date
      t.timestamps
    end
  end
end
