require './lib/vendor'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

class VendorTest < Minitest::Test

  def test_it_exists

    vendor = Vendor.new("Rocky Mountain Fresh")
    assert_instance_of Vendor, vendor
  end

  def test_it_has_a_name

    vendor = Vendor.new("Rocky Mountain Fresh")
    assert_equal "Rocky Mountain Fresh", vendor.name
  end

  def test_inventory_starts_empty

    vendor = Vendor.new("Rocky Mountain Fresh")
    expected = {}
    assert_equal expected, vendor.inventory
  end

  def test_it_can_check_stock

    vendor = Vendor.new("Rocky Mountain Fresh")
    assert_equal 0, vendor.check_stock("Peaches")
  end


end
