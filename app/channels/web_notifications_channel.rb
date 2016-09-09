# app/channels/web_notifications_channel.rb
class WebNotificationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "web_notifications_#{current_user.id}"
  end
end