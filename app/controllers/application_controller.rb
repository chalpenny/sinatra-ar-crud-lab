
require_relative '../../config/environment'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/articles/new" do
    erb :new
  end

  post "/articles" do
    @article = Article.create(params)
    redirect to "/articles/#{ @article.id }"
  end

  post '/articles/:id' do
    @article.id
    erb :show
  end


end
