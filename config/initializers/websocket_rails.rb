WebsocketRails.setup do |config|
  config.standalone      = true
  config.standalone_port = 3001
  config.redis_options   = {driver: :ruby}
  config.synchronize     = false
  config.redis_options   = {:host => '0.0.0.0', :port => '6379'}
end