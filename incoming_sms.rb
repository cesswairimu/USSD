require 'sinatra'
require 'AfricasTalkingGateway'

post '/incomingSms' do
  from = params[:from]
  to = params[:to]
  message = params[:text]
  date = params[:date]
  id = params[:id]

  puts "message received is #{message} from #{to} on #{date}"
  status 200
end
