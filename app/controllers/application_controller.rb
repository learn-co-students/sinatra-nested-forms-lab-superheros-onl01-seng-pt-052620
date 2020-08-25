require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do 
    erb :super_hero
  end
  
  post '/teams' do 
    @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
    members = params[:team][:members]
    
    members.each do |mem_params|
      Heroes.new(name: mem_params[:name], power: mem_params[:power], biography: mem_params[:biography])
    end
    
    @super_heroes = Heroes.all
    erb :team
  end
end
