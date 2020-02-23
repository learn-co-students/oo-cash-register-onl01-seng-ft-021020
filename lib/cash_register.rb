class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction_amount
  def initialize(emp_discount=0)
    @total = 0.0
    @discount = emp_discount
    @items = []
  end
  
  def add_item(title,price,quantity = 1)
    if quantity>1
      i=0
      while i<quantity
        @items << title
        i+=1
      end
    else
      @items << title
    end
    @total += price*quantity
    @last_transaction_amount = price*quantity
    @total
  end
  def apply_discount
    discount_total = ((@total * @discount)/100.to_f)
    @total -= discount_total
    if @discount > 0
     "After the discount, the total comes to $#{@total.to_i}."
   else
     "There is no discount to apply."
   end
  end
  
  def void_last_transaction()
    @total -= @last_transaction_amount
  end
 
end
