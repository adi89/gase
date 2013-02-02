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
  puts "(1) New client"
  puts "(2) Buy shares"
  puts "(3) Sell shares"
  puts "(4) View balances"
  puts "(5) quit #{Brokerage.name[0]} system"
end
response = menu

end

