class Market
  attr_reader :name,
              :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item)
    @vendors.find_all do |vendor|
      vendor.inventory.include?(item)
    end
  end

  def get_inventories
    @vendors.map do |vendor|
      vendor.inventory
    end
  end

  def sorted_item_list
    inventories = get_inventories
    items = []
    inventories.each { |inventory| items << inventory.keys}
    items.flatten.uniq.sort
  end


end
