require_relative "broker"
require_relative "portfolio"
require_relative "client"
require "yahoofinance"

def main_menu
  puts "Welcome to the #{Brokerage.name[0]}! Please make your selection from the items below: "
  puts "(1) New client"
  puts "(2) Buy shares"
  puts "(3) Sell shares"
  puts "(4) View balances"
  puts "(5) quit #{Brokerage.name[0]} system"

  response = gets.chomp.to_i

  while response != 5
    case response
