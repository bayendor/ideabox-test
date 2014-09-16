gem 'minitest'
require 'minitest/autorun'
require './lib/ideabox/idea'

class IdeaTest < Minitest::Test
  def test_basic_idea
    idea = Idea.new("title", "description")
    assert_equal "title", idea.title
    assert_equal "description", idea.description
  end

  def test_ideas_can_be_liked
    idea = Idea.new('diet', 'carrots and cucumbers')
    assert_equal 0, idea.likes
    idea.like!
    assert_equal 1, idea.likes
  end
end
