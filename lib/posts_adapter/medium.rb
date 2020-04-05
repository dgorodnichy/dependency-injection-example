require 'medium_api'

module PostsAdapter
  class Medium
    def initialize(username)
      @client = ::MediumAPI.new(username)
    end

    def user_posts
      @client.posts
    end
  end
end
