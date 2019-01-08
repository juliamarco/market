require './lib/vendor'
require './lib/market'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

class MarketTest < Minitest::Test

  def test_it_exists

    market = Market.new
    assert_instance_of Market, market
  end

end
