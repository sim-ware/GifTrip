require 'sinatra/base'
require './lib/search'

class GifTrip < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/result' do
    @search = Search.new
    @search.mantra_maker(params[:mantra])
    @search.giphy_call
    @search.fill_urllist
    erb :trippin
  end

  # start the server if ruby file executed directly
    run! if app_file == $0

end

# # @search = Search.new
# # @search.mantra_maker(params[:mantra])
# @gif = Giphy.search('#{@search.mantra}')
