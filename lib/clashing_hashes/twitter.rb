module ClashingHashes
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

      def more_popular(hash1, hash2)
        hash1 + hash2
      end
    end
  end
end