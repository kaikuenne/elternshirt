class CreatePrintfuls < ActiveRecord::Migration[5.2]
  def change
    create_table :printfuls do |t|
      t.string :product
      t.string :color
      t.string :size
      t.integer :variant_id

      t.timestamps
    end
  end
end
