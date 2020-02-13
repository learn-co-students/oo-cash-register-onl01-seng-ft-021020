require 'pry'

class CashRegister

  attr_accessor :total, :last_item

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_item = 0
  end

  def discount
    @discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @last_item = price * quantity
    @total += (price * quantity)
    array_titles = Array.new(quantity, title)
    array_titles.each { |item_title| @items << item_title }
  end

  def apply_discount
    if @discount != 
      @total = (@total - (@total * (@discount.to_f/100))).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_item
  end



end