
$broker= Broker.new('GASE Broker')

def menu
  puts "clear"
  puts "****Welcome to the greatest broker program EVER *** \n"
  puts "Register as a new client (necessary if you wish to buy or sell)"
  puts " "
  puts "(1) Enroll a new client"
  puts "(2) Buy shares"
  puts "(3) Sell shares"
  puts "(4) View client balances"
  response = gets.to_i
end


def new_client
  print "Name: "
  name= gets.chomp
  print "How much money is in you cash account?"
  cash= gets.chomp
  $broker.clients[name]= Client.new(name,cash)
  $broker.clients[name].portfolios['General']= {}
end


def totalbalance
  print "Name: "
  name= gets.chomp
  puts " Your total balance is $#{$broker.clients[name].cash + $broker.clients[name].stock_value}."
end

def stockbalance
  print "Name: "
  name= gets.chomp
  puts "Your stock balance is $#{$broker.clients[name].cash}. "
end

def cashbalance
  print "Name: "
  name= gets.chomp
  puts "Your cash balance is $#{broker.clients[name].cash}. "
end

def view_balance
  print "Name: "
  name = gets.chomp
  print "Would you like to see your (c)ash-balance, (s)tock balance, or (t)otal balance?"
  ans = gets.chomp.downcase
  case ans
    when 'c'
      cashbalance
    when 's'
      stockbalance
    when 't'
      totalbalance
    end
    puts "Would you like to view another balance. Y or N"
    derp = gets.chomp.upcase
      if 'Y'
        view_balance
        else
          puts 'Have a nice day!'
      end
  end

  def create_portfolio
    print










