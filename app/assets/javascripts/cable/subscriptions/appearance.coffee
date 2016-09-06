# app/assets/javascripts/cable/subscriptions/appearance.coffee
App.cable.subscriptions.create "AppearanceChannel",
  # サブスクリプションがサーバー側で利用可能になると呼び出される
  connected: ->
    @install()
    @appear()
 
  # WebSocket接続が閉じると呼び出される
  disconnected: ->
    @uninstall()
 
  # サブスクリプションがサーバーに拒否されると呼び出される
  rejected: ->
    @uninstall()
 
  appear: ->
    # サーバーの`AppearanceChannel#appear(data)`を呼び出す
    @perform("appear", appearing_on: $("main").data("appearing-on"))
 
  away: ->
    # サーバーの`AppearanceChannel#away`を呼び出す
    @perform("away")
 
 
  buttonSelector = "[data-behavior~=appear_away]"
 
  install: ->
    $(document).on "page:change.appearance", =>
      @appear()
 
    $(document).on "click.appearance", buttonSelector, =>
      @away()
      false
 
    $(buttonSelector).show()
 
  uninstall: ->
    $(document).off(".appearance")
    $(buttonSelector).hide()