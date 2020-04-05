# frozen_string_literal: true

require 'posts_adapter/medium'

class Medium
  cattr_accessor :adapter

  self.adapter = ::PostsAdapter::Medium

  def initialize(name = nil)
    @client = adapter.new(name)
  end

  def posts
    @client.user_posts
  end
end
