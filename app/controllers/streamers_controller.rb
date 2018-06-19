class StreamersController < ApplicationController
  get '/' do
    redirect '/streamers'
  end

  get '/streamers' do
    @streamers = Streamer.all
    erb :'streamers/index'
  end

  get '/streamers/new' do
    erb :'streamers/new'
  end

  get '/streamers/:name' do
    @streamer = Streamer.find_by_name(params[:name])
    erb :'/streamers/show'
  end

  post '/streamers' do
    @streamer = Streamer.create(name: params["Streamer Name"])
    @streamer.url = params["URL"]
    @streamer.save
    redirect("/streamers/#{@streamer.name}")
  end



end