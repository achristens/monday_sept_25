require './product.rb'
require 'pry'
#  and remove a prodcut from the cart

class ShoppingCart
  # CLASS VARIABLES
  @@all_products = []

  # CLASS METHODS
  def self.add_product
    puts "What would you like to buy?"
    product = gets.chomp
    puts "How much does it cost?"
    cost = gets.chomp.to_f
    new_product = Product.new(product, cost)
    @@all_products << new_product
    return new_product
  end

  def self.all
    return @@all_products
  end

  def self.cart_subtotal
    cart_subtotal = 0
    @@all_products.each do |cost|
      cart_subtotal += cost.price
    end
    return cart_subtotal
  end

  def self.cart_with_tax
    each_total = 0
    @@all_products.each do |total|
      each_total += total.total_price
    end
    return each_total
  end

  def self.remove_product
    @@all_products.delete_at(0)
  end

end

my_cart = ShoppingCart.new
kale = ShoppingCart.add_product
berries = ShoppingCart.add_product

puts kale.product_total
puts ShoppingCart.remove_product
puts ShoppingCart.all.inspect
# puts ShoppingCart.cart_subtotal.inspect
# puts ShoppingCart.all.inspect
# puts ShoppingCart.cart_with_tax
