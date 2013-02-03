
require "pry"
require "yahoofinance"
require_relative "broker"
require_relative "portfolio"
require_relative "client"
require_relative "stock"
require_relative "functions"


$broker= Broker.new('GASE Broker')


binding.pry

response = menu
while response != 'Q'
  case response
  when '1' then new_client #then is good for compact syntax
  when '2' then buy_shares
  when '3' then sell_shares
  when '4' then view_balances
  when '5' then create_portfolio
  end

  response = menu
end

