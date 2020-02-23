class CashRegister

    attr_accessor :total, :discount 

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = [ ]
    end

    
    def add_item(title, price, quantity = 1)
      @price = price * quantity 
      @total += @price 
      if quantity > 1
        x = 0 
        while x < quantity
          @items << title
          x += 1
        end
      else 
        @items << title 
        end
    end
    
    def items
      @items
    end 

    def apply_discount
      if @discount > 0 
        @total -= (@total * @discount)/100
        return "After the discount, the total comes to $#{@total}."
      else 
        return "There is no discount to apply."
      end
    end

    def void_last_transaction
        @total -= @price
    end
end