class Client

  attr_accessor :name, :cash, :stock_value

  def initialize(name, cash)
    @name = name
    @cash= cash
    @stock_value = 0
    @portfolios= {}
  end

  def to_s
    puts "#{@name} has #{@cash} dollars in cash"

    #  and #{@stock_value} dollars in stocks.
  end
end
