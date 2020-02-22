require "pry"

class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount=nil)
    @total = 0.0
    @discount = discount
    @new_total = []
    @item = []
  end
  
  def total
    if @discount == nil
      @discount = 0.0
    end
    @total = @total - (@total * (@discount/100))
    @total
  end
  
    
  def add_item(title=nil, price=0.0, quantity=1)
    @total += (price*quantity)
    #@new_total = (price*quantity)
    @new_total << (price * quantity)
    i = 0
    while i < quantity
      @item << (title)
      i += 1
    end
    
  end
  
  def apply_discount
    if @discount == nil || @discount == 0.0
      return "There is no discount to apply."
    else
      @total = @total - (@total * (@discount/100.0))
      @total
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def items
    @item
  end
  
  def void_last_transaction
    if @new_total.length == 0
      @total = 0.0
      @total
    else
      @total = @total - @new_total[@new_total.length-1]
      @total
    end
  end
      
end
