class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
    self.last_transaction = price * quantity
    while quantity > 0
      items << title
      quantity -= 1
    end
  end


  def apply_discount
    if discount > 0
      self.total -= (self.total * (discount.to_f/100.00)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end


  def void_last_transaction
    self.total -= self.last_transaction
  end


end # end of CashRegister class
