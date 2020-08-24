require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @team = Team.new(params["team"])
        @member1 = Hero.new(params["team"]["heros"][0])
        @member2 = Hero.new(params["team"]["heros"][1])
        @member3 = Hero.new(params["team"]["heros"][2])
        # binding.pry
        erb :team
    end


end
