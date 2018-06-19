class StreamersController < ApplicationController

  get '/streamers' do
    erb :'streamers/index'
  end

  get '/streamers/new' do
    erb :'streamers/new'
  end

  get '/streamers/:slug' do
    @streamer = Streamer.find_by_slug(params[:slug])
    erb :'/streamers/show'
  end

  post '/streamers' do
    @streamer = Streamer.create(name: params("Name"))
    @streamer.save
    redirect("/streamers/#{@streamer.slug}")
  end

end