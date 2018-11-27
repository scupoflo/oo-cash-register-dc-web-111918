class CashRegister
attr_accessor :total, :discount, :items, :last_transaction


  def initialize (discount=0)
    @total= 0
    @discount= discount
    @items= []
  end


#Personal Note for me- I need to review the following 2 methods
  def apply_discount
        if discount != 0
        self.total = (total * ((100.0 - discount.to_f)/100)).to_i
           "After the discount, the total comes to $#{self.total}."
        else
           "There is no discount to apply."
        end
      end

      def add_item(title, amount, quantity=1)
          self.total += amount * quantity
          quantity.times do
            items << title
          end
          self.last_transaction = amount * quantity
        end

        def void_last_transaction
          self.total = self.total - self.last_transaction
        end

        # def add_item (item_title, price, quantity=1)
        #   self.total += (price * quantity)
        #   items<< item_title
        # end
end





































# class CashRegister
#   attr_accessor :total, :discount
#
#   def initialize(discount=0)
#     @total= 0
#     @discount= discount
#   end
#
#   def add_item(title, price, quantity=1)
#     self.total += price * quantity
#   end
#
#   def apply_discount #personal note: Need to review code to calculate discount
#       if discount != 0
#         self.total = (total * ((100.0 - discount.to_f)/100)).to_i
#         "After the discount, the total comes to $#{self.total}."
#       else
#         "There is no discount to apply."
#       end
#     end
#
# puts CashRegister.self
#
#

# end








# class CashRegister
#
#   attr_accessor :items, :discount, :total, :last_transaction
#
#   def initialize(discount=0)
#     @total = 0
#     @discount = discount
#     @items = []
#   end
#
#   def add_item(title, amount, quantity=1)
#     self.total += amount * quantity
#     quantity.times do
#       items << title
#     end
#     self.last_transaction = amount * quantity
#   end
#
#   def apply_discount
#     if discount != 0
#       self.total = (total * ((100.0 - discount.to_f)/100)).to_i
#       "After the discount, the total comes to $#{self.total}."
#     else
#       "There is no discount to apply."
#     end
#   end
#

# end
