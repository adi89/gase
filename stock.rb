class Stock

  attr_accessor :name, :value, :quantity

  def initialize(name, quantity)
    @name = name
    @value = value
    @num = num
  end

  def to_s
    puts "There are #{num} shares of #{name}stock, which has a value of #{value}. "
  end

end
