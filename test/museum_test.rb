require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require './lib/patron'
require './lib/museum'


class MuseumTest < Minitest::Test

  def setup
    @dmns = Museum.new("Denver Museum of Nature and Science")
    @gems_and_minerals = Exhibit.new("Gems and Minerals", 0)
    @dead_sea_scrolls = Exhibit.new("Dead Sea Scrolls", 10)
  end

  def test_it_exists
    assert_instance_of Museum, @dmns
  end

  def test_it_has_a_name
    assert_equal "Denver Museum of Nature and Science", @dmns.name
  end

  def test_it_can_have_exhibits
    assert_equal [], @dmns.exhibits
  end

  def test_if_exhibits_are_added
    @dmns.add_exhibit(@gems_and_minerals)
    @dmns.add_exhibit(@dead_sea_scrolls)

    assert_equal [@gems_and_minerals, @dead_sea_scrolls], @dmns.exhibits
  end
end
