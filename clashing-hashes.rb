require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'
require_relative 'lib/twitter'

# Get request for the root url
get '/' do
  @show_description = true
  erb :index
end

# Post request for /twitter
post '/twitter' do
  tweet = Twitter::Tweet.new
  @tweets_list = tweet.tweets
  @something = tweet.more_popular(params[:text1],params[:text2])
  erb :twitter
end

