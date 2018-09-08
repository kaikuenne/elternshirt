class AddStripeidToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :stripeid, :string
  end
end
