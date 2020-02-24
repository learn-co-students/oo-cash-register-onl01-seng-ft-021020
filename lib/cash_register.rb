class CashRegister
  attr_accessor :total, :discount, :item, :last_price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item =[]
  end

  def add_item (item, price, quantity=1)
    @last_price = price*quantity
    @total += price*quantity
    counter = 0
    if quantity == 1
     @item << item
   else
     while counter < quantity
      @item << item
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
    @item
  end

  def void_last_transaction
    @total -= @last_price
  end

end