require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    get '/' do
        erb :super_hero
    end
    post '/team' do
        @superhero = Superhero.new(name: params[:superhero][:name], power: params[:superhero][:power], bio: params[:superhero][:bio])
        @team = Team.new(params[:superhero][:team], name: params[:team][:name], motto: params[:team][:motto])
        erb :'team'

    end
end
