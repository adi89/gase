class Stock

  attr_accessor :name, :value, :quantity

  def initialize(name, quantity)
    @name = name.upcase
    @value = YahooFinance::get_quotes(YahooFinance::StandardQuote, name)[name].lastTrade
    @quantity = quantity
  end

  def to_s
    puts "There are #{quantity} shares of #{name}, \n which have a current market value of #{value * quantity}. "
  end

end
