class Stock

  attr_accessor :value , :num

  def initialize(value, num, name)
    @name = name
    @value = value
    @num = num
  end

  def to_s
    puts "There are #{num} shares of #{name }stock, which has a value of #{value}. "
  end

end
