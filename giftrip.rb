require 'sinatra/base'

class GifTrip < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/mantra' do
    @mantra = params[:mantra]
    erb :trippin
  end

  # start the server if ruby file executed directly
    run! if app_file == $0

end


# p params
# @mantra = params[:mantra]
# erb :trip
