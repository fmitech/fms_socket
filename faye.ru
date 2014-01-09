require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

Faye::WebSocket.load_adapter('thin')
bayeux = Faye::RackAdapter.new(:mount => '/faye', :timeout => 25)
run bayeux