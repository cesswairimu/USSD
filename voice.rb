require 'sinatra'
require 'AfricasTalkingGateway'

post '/voice' do
  phoneNumber = params[:callerNumber]
  puts params.inspect
  content_type 'text/plain'
  say = "<Response>" \
    "<Say>Your phoneNumber is  #{phoneNumber} </Say>" \
    "</Response>"
  body say
  status 200
end
