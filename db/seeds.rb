# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# coding: utf-8
User.create(id: 1,
	email: "nearby201609@gmail.com",
	encrypted_password: "$2a$11$VtNToUSMn5XyL3ME3xaOGusoxFiR2CVdNRBxYN0o/9M1uT.rJ2naC",
	sign_in_count: 1,
	current_sign_in_at: "2016-10-07 05:46:43",
	last_sign_in_at: "2016-10-07 05:46:43",
	failed_attempts: 0,
	created_at: "2016-10-07 05:46:43",
	updated_at: "2016-10-07 05:46:43",
	name: "地域見守り隊",
	nickname: "地域見守り隊",
	birthday: "2016-09-01",
	gender: 0,
	zipcode: 153,
	prefecture_name: "東京都",
	city: "目黒区",
	street: "目黒２丁目",
	building: "４－３６")
Message.create(id: 1,
        body: "こんにちは！",
     user_id: 1,
chat_room_id: 1,
  created_at: "2016-10-07 05:48:01",
  updated_at: "2016-10-07 05:48:01")
ChatRoom.create(id: 1,
     title: "ホーム",
   user_id: 1,
created_at: "2016-10-07 05:47:37",
updated_at: "2016-10-07 05:47:37")