class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    return @items.map { | item | item[:name] }.sort
  end

  def cheap
    return @items.filter { | item | item[:price] < 30 }
  end

  def out_of_stock
    return @items.filter { | item | item[:quantity_by_size].empty? }
  end

  def stock_for_item(name)
    return @items.find { | item | item[:name] == name }[:quantity_by_size]
  end

  def total_stock
    return @items.sum { |item| item[:quantity_by_size].values.sum }

  end

  private
  attr_reader :items
end
