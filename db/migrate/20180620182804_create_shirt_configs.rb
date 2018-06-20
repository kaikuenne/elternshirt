class CreateShirtConfigs < ActiveRecord::Migration[5.2]
  def change
    create_table :shirt_configs do |t|
      t.string :gender
      t.string :child_name
      t.string :birth_date
      t.string :back1
      t.string :back2
      t.string :color
      t.references :user
      t.references :tshirt

      t.timestamps
    end
  end
end
