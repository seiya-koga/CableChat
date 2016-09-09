class ChatRoomsChannel < ApplicationCable::Channel
	def subscribed
		stream_from "chat_rooms_#{params['chat_room_id']}_channel"
		stream_from 'all'
		stream_for current_user
	end

	def unsubscribed
    # チャネルは、サブスクライブ解除されたときに任意のクリーンアップが必要
end

	def send_message(data)#ページから送信されたプロセスデータ
		if data['message'].match(/\@[a-zA-Z0-9_]+/)
			name = data['message'].match(/\@[a-zA-Z0-9_]+/).to_s.gsub('@', '')
			user = User.find_by_name(name)
			ChatChannel.broadcast_to(user, {name: current_user.name, content: data['message']})
		else
		current_user.messages.create!(body: data['message'], chat_room_id: data['chat_room_id'])#メッセージDB保存
	end
end
end