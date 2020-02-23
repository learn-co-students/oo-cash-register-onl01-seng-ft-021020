
class CashRegister 

  attr_accessor :total, :discount,:cost, :items 

  def initialize(discount = 0)
      @total = 0
      @discount = discount 
      @items = [] 
  end
  
  def add_item(title, price, quantity = 1)
      self.total += price * quantity 
      quantity.times do 
        items << title 
      end
      self.cost = price * quantity 
  end

  def apply_discount 
      if @discount > 0 
        @percentage = (cost * discount)/100
        @total -= @percentage
        return "After the discount, the total comes to $#{total}."
      else
        return "There is no discount to apply."
      end
  end
  
  def void_last_transaction 
      @total -= @cost
  end
    
    
  
end 