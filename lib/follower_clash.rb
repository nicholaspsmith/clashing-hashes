require 'rubygems'
require 'bundler/setup'
require 'twitter'
require_relative 'lib/follower_clash'

module FollowerClash
  class User
    attr_reader :login
    def initialize(login)
      @login = login
    end

    def followers
      #TODO
    end
  end

  class Comparer
    def initialize(user1, user2)
      @user1 = user1
      @user2 = user2
    end
  end
end