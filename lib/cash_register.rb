require 'pry'

class CashRegister

  attr_accessor :total, :last_item

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_item = nil
  end

  def discount
    @discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    self.last_item(price, quantity)
    @total += (price * quantity)
    array_titles = Array.new(quantity, title)
    array_titles.each { |item_title| @items << item_title }
  end

  def last_item(price, quanitity)
    @last_item = price * quantity
  end

  def apply_discount
    if self.discount != 
      self.total = (self.total - (self.total * (self.discount.to_f/100))).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= self.last_item
  end



end