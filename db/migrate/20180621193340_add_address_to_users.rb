class AddAddressToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :address1, :string
    add_column :users, :address2, :string
    add_column :users, :city, :string
    add_column :users, :state_code, :string
    add_column :users, :country_code, :string
    add_column :users, :zip, :string
  end
end
