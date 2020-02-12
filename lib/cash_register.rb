class CashRegister
  attr_accessor :total
  attr_reader :discount, :items, :last_item_price
  
  def initialize(employee_discount = 0)
    if employee_discount != 0
      @discount = employee_discount
    else
      @discount = 0
    end
    
    @last_item_price = 0
    @total = 0
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @total = @total + (price * quantity)
    
    if quantity > 1
      counter = quantity
      while counter > 0
        @items << title
        counter -= 1
      end
    else
      @items << title
    end
    
    @last_item_price = price * quantity
  end
  
  def apply_discount
    if @discount != 0
      @discount = @total * (@discount.to_f / 100)
      @total = (@total - @discount).to_i
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
      @total -= @last_item_price
  end
  
end
