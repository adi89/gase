
require 'pry'
require_relative "broker"
require_relative "portfolio"
require_relative "client"
require_relative 'functions'
require "yahoofinance"



response = menu
while response != 'Q'
  case response
  puts "Welcome to the #{Brokerage.name[0]}! Please make your selection from the items below: "
  when '1' then new_client #then is good for compact syntax
  when '2' then buy_shares
  when '3' then sell_shares
  when '4' then view_balances

end

response = menu

end
