
require_relative '../../config/environment'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/articles/new' do
    binding.pry
    erb :new
  end

  post '/articles' do
    #binding.pry
    @article = Article.create(params[:title], params[:content])

    erb :show
  end

end
