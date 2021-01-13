class CashRegister

    attr_accessor :total, :discount, :products, :last_transaction

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @products = []
        @last_transaction = 0
    end

    def add_item(title, price, quantity=1) 
        self.last_transaction = price * quantity
        
        (1..quantity).each do |x|
            self.products << title 
        end
        
        self.total += (price * quantity)
        
        
    end

    def apply_discount
        if discount == 0
            "There is no discount to apply."
        else
            self.total = self.total * (100 - @discount)
            self.total = self.total / 100
            "After the discount, the total comes to $#{self.total}."
        end
    end

    def items
        self.products
    end

    def void_last_transaction
        self.total = self.total-self.last_transaction

    end
        



end

