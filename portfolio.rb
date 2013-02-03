class Portfolio

  attr_accessor :portfolio_name, :stocks

  def initializer(portfolio_name)
    @portfolio_name = portfolio_name
    @stocks = {}
  end

  def to_s
    puts "This is the #{portfolio_name} portfolio."
  end
end
