class CashRegister
  attr_accessor :total
  attr_reader :discount
  
  def initialize(employee_discount = 20)
    @discount = employee_discount    
    @total = 0
  end
  
  def add_item(title, price, quantity = 1)
    currentTotal = total
    @total = currentTotal + (price * quantity)
  end
  
  def apply_discount
    total = total * (discount.percent_of(100))
  end
  
end
