require 'sinatra/base'
require_relative 'models/link'

class BookmarkManager < Sinatra::Base
  post '/links' do
    Link.create(url: params[:url], title: params[:title])
    redirect to('/links')
  end

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  run! if app_file == $0
end