class AddUsers < ActiveRecord::Migration[5.0]
		def change
			add_column :users, :nickname, :string,　unique: true
			add_column :users, :birthday, :date
			add_column :users, :gender, :integer, null: false, default: 0
		end

end