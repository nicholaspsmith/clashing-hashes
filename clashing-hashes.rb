require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'
# require_relative 'lib/clashing_hashes/twitter'
require_relative 'lib/follower_clash'

# Get request for the root url
get '/' do
  # @show_description = true
  erb :index
end

# Post request for /twitter
post '/results' do
  @user1 = FollowerClash::User.new(params["login-a"])
  @user2 = FollowerClash::User.new(params["login-b"])
  more_popular = FollowerClash::Comparer.new(@user1,@user2).compare
  @result = more_popular.login
  erb :results
end

