require './lib/vendor'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

class VendorTest < Minitest::Test

  def test_it_exists

    vendor = Vendor.new("Rocky Mountain Fresh")
    assert_instance_of Vendor, vendor
  end

end
