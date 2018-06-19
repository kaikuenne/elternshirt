class AddColorToTshirts < ActiveRecord::Migration[5.2]
  def change
    add_column :tshirts, :color, :string
    add_column :tshirts, :back1, :string
    add_column :tshirts, :back2, :string
    add_column :tshirts, :back3, :string
  end
end
