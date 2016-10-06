class UsersNull < ActiveRecord::Migration[5.0]
  def change
  	change_column_null :users, :name, false
  	change_column_null :users, :nickname, false, unique: true
  	change_column_null :users, :birthday, false
  	change_column_null :users, :zipcode, false
  	change_column_null :users, :prefecture_name, false
  	change_column_null :users, :city, false
  	change_column_null :users, :street, false


  end
end
