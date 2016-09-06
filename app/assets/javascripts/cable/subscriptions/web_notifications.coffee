# app/assets/javascripts/cable/subscriptions/web_notifications.coffee
# クライアント側では、サーバーからweb通知の送信権を
# リクエスト済みであることが前提
App.cable.subscriptions.create "WebNotificationsChannel",
  received: (data) ->
    new Notification data["title"], body: data["body"]