class CashRegister
  attr_accessor :total, :discount, :title, :last_price
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @title =[]
  end 
  
  def add_item (title, price, quantity=1)
    @last_price = price*quantity
    @total += price*quantity
    counter = 0
    if quantity == 1
     @title << title
   else
     while counter < quantity 
      @title << title 
      counter+=1
    end 
   end 
  end 
  
  def apply_discount 
    if @discount != 0 
      discount_applied = @discount/100.to_f
      new_total = @total * discount_applied
      @total -= new_total
      return "After the discount, the total comes to $#{@total.to_i}."
    end 
    return "There is no discount to apply."
  end 
  
  def items 
    @title
  end 
  
  def void_last_transaction
    @total -= @last_price
  end 
  
end 
