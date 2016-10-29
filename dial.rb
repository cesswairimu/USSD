require 'sinatra'

post '/voice' do
  phoneNumber = params[:callerNumber]
  puts params.inspect
  content_type 'text/plain'
  say = "<?xml version='1.0' encoding='UTF-8'?>" \
    "<Response>" \
    "<Dial phoneNumber ='+254706737244' />" \
    "</Response>"
  body say
  status 200
end
