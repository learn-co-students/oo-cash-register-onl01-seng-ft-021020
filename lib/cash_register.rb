require 'pry'

class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(item, price, quantity = 1)
        quantity.times do
            @total += price
            @items << item
        end
        @last_transaction = price*quantity
    end

    def apply_discount
        if @discount > 0
            multiplier = (100.0 - @discount)/100
            discount_total = @total * multiplier
            @total = discount_total.to_i
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @last_transaction
    end
end

register = CashRegister.new
