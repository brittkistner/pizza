class Pizza
  attr_reader :toppings
  def initialize(topping1 = [Topping.new("cheese", vegetarian:true)])
    @toppings = topping1
  end
end

class Topping
  attr_accessor :name, :vegetarian
  def initialize(name1, vegetarian: false)
    @name = name1
    @vegetarian = vegetarian
  end
end
