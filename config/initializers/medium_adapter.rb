# frozen_string_literal: true

require 'posts_adapter/medium'
require 'posts_adapter/fake'

Medium.adapter = Rails.env.test? ? PostsAdapter::Fake : PostsAdapter::Medium
