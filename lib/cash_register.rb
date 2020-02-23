require 'pry'
class CashRegister 
  
  attr_accessor :discount, :total, :price, :items
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end 
  
  def total 
    @total 
  end
  
  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    @total_transaction = price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
      @total_transaction
    end
  end
  
  def apply_discount
    if @discount > 0
      @price_discount = (price * discount)/100
      @total -= @price_discount
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end
  
  
  def void_last_transaction
    if @items = [] 
      @total -= @total_transaction
    else 
      @total -= @price
    end
  end
  
end 