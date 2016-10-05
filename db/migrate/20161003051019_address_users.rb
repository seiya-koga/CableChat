class AddressUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :zipcode, :integer
  	add_column :users, :prefecture_name, :string
  	add_column :users, :city, :string
  	add_column :users, :street, :string
  	add_column :users, :building, :string
  end
end
