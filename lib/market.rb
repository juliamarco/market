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

  def total_inventory
  inventories = get_inventories
    inventories.inject do |total, actual|
      total.merge(actual) do |item, old_qty, new_qty|
        old_qty + new_qty
      end
    end
  end

  def deduct_qty(item, qty)
    @vendors.each do |vendor|
      if vendor.inventory.include?(item)
        until qty == 0 || vendor.inventory[item] == 0
          vendor.inventory[item] -= 1
          qty -= 1
        end
      end
    end
  end

  def sell(item, qty)
    inventory = total_inventory
    if inventory.include?(item)
      if inventory[item] >= qty
        deduct_qty(item, qty)
        return true
      else
        return false
      end
    else
      return false
    end
  end

end
