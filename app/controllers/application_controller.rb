require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }
  
  get '/' do 
     erb :super_hero
  end
  
  post '/teams' do 
    binding.pry 
    @team_name = params[:team][:name]
    @team_motto = "Team Motto: "+params[:team][:motto]
  end 
end
