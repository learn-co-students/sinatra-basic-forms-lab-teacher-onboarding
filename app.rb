require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    @puppies = Puppy.all
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @puppy = Puppy.new(params)
    erb :display_puppy
  end

  # get '/puppy' do
  #   @puppy = Puppy.all.last
  #   erb :display_puppy
  # end
end
