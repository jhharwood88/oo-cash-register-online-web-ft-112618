require 'pry'
class CashRegister
  
  attr_accessor :total, :discount , :quantitiy
  
  @@items = []
  
  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
  end 
  
  def add_item(items, price, quantitiy = 1)
    @total += price * quantitiy
    @quantitiy = quantitiy
    
  end
  
  def apply_discount
    if @discount != 0
      @total -= (@total * (@discount * 0.01))
    "After the discount, the total comes to $#{@total.to_i}."
   else
      "There is no discount to apply."
   end
  end
  
  def items
    @@items << items
    @@items
  end
  
end
