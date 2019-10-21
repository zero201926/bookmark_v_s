require 'sinatra/base'
require 'capybara'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $0
end
