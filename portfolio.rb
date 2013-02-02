class Portfolio

  attr_accessor :portfolio_name, :stocks

  def initializer(name)
    @portfolio_name = portfolio_name
    @stocks = {}
  end
end
