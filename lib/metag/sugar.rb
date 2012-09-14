require 'metag/tag'

module Metag #:nodoc:
  module Sugar
    def facebook_tag(*args)
      meta_tag :fb, *args
    end
    alias :fb_tag :facebook_tag

    def opengraph_tag(*args)
      meta_tag :og, *args
    end
    alias :og_tag :opengraph_tag

    def twitter_tag(*args)
      meta_tag :twitter, *args
    end
    alias :tw_tag :twitter_tag
  end
end
