require './lib/vendor'
require './lib/market'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

class MarketTest < Minitest::Test

  def test_it_exists

    market = Market.new("South Pearl Street Farmers Market")
    assert_instance_of Market, market
  end

  def test_it_has_a_name

    market = Market.new("South Pearl Street Farmers Market")
    assert_equal "South Pearl Street Farmers Market", market.name
  end

end
