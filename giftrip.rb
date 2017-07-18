require 'sinatra'

get '/' do
  erb :index
end

post '/mantra' do
  "mantra"
end


# p params
# @mantra = params[:mantra]
# erb :trip
