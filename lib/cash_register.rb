require 'pry'

class CashRegister
attr_accessor :total, :discount, :items, :last_transation_amount
    def initialize(discount = nil)
       @total = 0
       @discount = discount
       @items = []
       @last_transation_amount = 0
    end
  
   
 def add_item(title, price, quantity = 1)
    self.last_transation_amount = price * quantity
    self.items += [title] * quantity
    self.total +=  price * quantity
     
    end
   
   
   def apply_discount 
        if @discount == nil
           p "There is no discount to apply."
        else 
         result = total * discount / 100
           @total -= result
           p "After the discount, the total comes to $#{@total}."
       end
    end

  def void_last_transaction
 
      self.items.pop
      self.total -=self.last_transation_amount
  end





end
