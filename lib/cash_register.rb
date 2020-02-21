class CashRegister
  
  attr_accessor :total, :discount, :items, :last_item, :item_count
  def initialize( discount = 1)
    @total = 0
    @discount = discount
    @items = []
    @item_count = 0
  end
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    counter = 0
    
    while counter < quantity do
      counter += 1
      @items = @items.push(title)
    end
    
    @last_item = price
    @item_count += 1
    
  end
  
  def apply_discount
    
    if(discount != 1)
      
      @total = @total - ( @total * @discount / 100.0 )
    
      return "After the discount, the total comes to $#{@total.round}."
    end
    
    return "There is no discount to apply."
  end
  
  def void_last_transaction
    @total -= @last_item
    @item_count -= 1
    if(@item_count == 0)
      @total = 0
    end
  end
end

cr = CashRegister.new(20)

puts cr.discount