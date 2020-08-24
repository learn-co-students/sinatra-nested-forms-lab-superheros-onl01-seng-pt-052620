require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        :super_hero
    end

    post '/teams' do
        @team = Team.new(params[:team])

        params[:team][:heros].each do |details|
            SuperHero.new(details)
        end

        @heros = SuperHero.all

        erb :team
    end


end
