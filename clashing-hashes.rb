require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require_relative 'lib/twitter'

# Get request for the root url
get '/' do
  @title = '<i class="icon-bolt"></i> Clashing Hashes <i class="icon-bolt"></i>'
  @show_description = true
  erb :index
end

# Post request for /twitter
post '/twitter' do
  tweet = Twitter::Tweet.new
  @tweets_list = tweet.tweets
  @title = '<i class="icon-flag-checkered"></i> Form Submitted <i class="icon-flag-checkered"></i>'
  erb :twitter
end
