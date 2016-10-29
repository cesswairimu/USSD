require 'sinatra'

post '/voice' do
  phoneNumber = params[:callerNumber]
  puts params.inspect
  content_type 'text/plain'
  say = "<?xml version='1.0' encoding='UTF-8'?>" \
    "<Response>" \
  "<Say> Please listen to this song </Say>" \
    # "<Play url="http://www.amclassic.com/mp3/amclassic"
    "</Response>"
  body say
  status 200
end
