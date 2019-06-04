require 'sinatra/base'


class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do 
      erb :super_hero
    end 
    
    post '/teams' do 
      @team = Team.new(params[:team])
      params[:team][:members].map do |el|
        @members = Member.new(el)
      end 
      erb :team
    end 
end
