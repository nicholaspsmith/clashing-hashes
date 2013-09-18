module Twitter
  class Tweet
    attr_accessor :tweets
    def initialize
      @tweets = [ "asdf","asdaagd"]
        # {
        #   "title": "Hello World",
        #   "poster": "@nicholaspsmith"
        # },
        # {
        #   "title": "Zibbidy zoo!",
        #   "poster": "@billcosby"
        # }
      # ]
    end
  end
end