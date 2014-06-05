class Pizza
  attr_reader :toppings
  def initialize(toppings = [Topping.new('cheese', vegetarian: true)])
    @toppings = toppings #can rename to topping1, think about the difference between instance variable and a local variable
  end

  def vegetarian?
    @toppings.all?{|topping| topping.vegetarian == true}
  end

  def add_topping(top, vegetarian)
    @toppings << Topping.new(top, vegetarian)
  end
end

class Topping
  attr_reader :name, :vegetarian #remember that both symbols are actually a method.  See below.
  def initialize(name1, vegetarian: false)
    @name = name1
    @vegetarian = vegetarian
  end

  # def name
  #   @name
  # end

  # def vegetarian
  #   @vegetarian
  # end

  # def name=(new_name)
  #   @name = new_name
  # end
end
