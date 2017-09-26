# Each product has a name, base price, and tax rate/
class Product
  def initialize(name, price)
    @name     = name
    @price    = price
    @tax_rate = 1.13
  end

  # READERS
  def price
    @price
  end

  def name
    @name
  end

  def tax_rate
    @tax_rate
  end

  def total_price
    (@price * @tax_rate).round(2)
  end

  def product_total
    self.total_price
  end
end

# blender = Product.new('Blender', 100)
# puts blender.inspect
#
# puts blender.total
# def initialize
#   puts "What would you like to buy?"
#   product = gets.chomp
#   puts "How much does it cost?"
#   cost = gets.chomp.to_f
#   @name     = product
#   @price    = cost
#   @tax_rate = 1.13
# end
