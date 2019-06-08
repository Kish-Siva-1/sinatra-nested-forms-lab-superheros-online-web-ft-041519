require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }
  
  get '/' do 
     erb :super_hero
  end
  
  post '/teams' do 
    binding.pry 
    i=0
    @team_name = params[:team][:name]
    @team_motto = "Team Motto: " + params[:team][:motto]
    params[:team][:members].each do |name| 
      i+=1
      name.each do |x,value|
        instance_variable_set("@#{x}_#{i}", value) 
      end 
    end
      erb :team 
  end 

end
