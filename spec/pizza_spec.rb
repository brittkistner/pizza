require './pizza'

# before  # use let
#   pizza = Pizza.new
# end

describe Pizza do
  describe '.initialize' do
    it 'records all of the toppings' do
      toppings = [
        Topping.new('mushrooms', vegetarian:true),
        Topping.new('pepperoni')
      ]
      pizza = Pizza.new(toppings)

      expect(pizza.toppings).to eq(toppings)
    end
    it 'defaults the toppings to cheese only, if the pizza has no toppings' do
      pizza = Pizza.new()
      expect(pizza.toppings.size).to eq(1)
      expect(pizza.toppings.first.name).to eq('cheese')
    end

    it 'returns true if the toppings on a pizza are vegetarian' do
      pizza = Pizza.new()
      expect(pizza.vegetarian?).to eq(true)
    end

    it 'adds topping to the toppings array' do
      pizza = Pizza.new()
      pizza.add_topping("olives", vegetarian: true)
      expect(pizza.toppings.last.name).to eq('olives')
    end
  end
end

describe Topping do
  describe '.initialize' do
    it "sets the name of the topping" do
      topping = Topping.new('olives')
      expect(topping.name).to eq('olives')
    end
    it "sets whether or not the topping is vegetarian" do
      topping = Topping.new('bellpeppers', vegetarian: true)
      expect(topping.vegetarian).to eq(true)
    end
  end
  it "exists" do
    expect(Topping).to be_a(Class)
  end

end
