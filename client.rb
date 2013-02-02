class Client

  attr_accessor :name, :cash, :stock_value

  def initialize(name, cash)
    @name = name
    @cash = cash
    @stock_value = stock_value
    @portfolios= {}
  end

  def to_s
    puts "#{client} has a total stock account value of #{stock_value}"
  end
end
