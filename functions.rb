

$broker= Broker.new('GASE')
$broker.clients = Client.new('test', 20000)


######### MAIN MENU FUNCTION

def menu
  puts `clear`
  puts " _______ _______ _______ _______ "
  puts "|     __|   _   |     __|    ___|"
  puts "|    |  |       |__     |    ___|"
  puts "|_______|___|___|_______|_______|"
  puts "                                 "
  puts "****Welcome to the worst broker program EVER *** \n"
  puts "Register as a new client (necessary if you wish to buy or sell)"
  puts " "
  puts "(1) Enroll a new client"
  puts "(2) Buy shares"
  puts "(3) Sell shares"
  puts "(4) View client balances"
  puts "(Q) Quit GASE Broker\n\n"
  puts "------------------------"
  print"Enter your selection:  "
  gets.chomp
end

########## ADD NEW CLIENT FUNCTION

def new_client
  print "Name: "
  name= gets.chomp
  print "How much money will you deposit in cash account?"
  cash= gets.chomp

 $broker.clients[name] = Client.new(name, cash)

  #puts $broker.clients[name].name
   $broker.clients[name].portfolios['General'] = Portfolio.new('General')

  puts "press return to continue"
  gets
end

######### VIEW BALANCE FUNCTIONS

def totalbalance(name)
  puts " Your total balance is $#{$broker.clients[name].cash + $broker.clients[name].stock_value}."
end

# we need to find a way to calculate total of all portfolios for this stock balance
def stockbalance(name)
   puts "Your stock balance is $#{$broker.clients[name].stock_value}. "
end

def cashbalance(name)
  puts "Your cash balance is $#{$broker.clients[name].cash}. "
end

def view_balance(name)
  print "Would you like to see your (c)ash-balance, (s)tock balance, or (t)otal balance?"
  ans = gets.chomp.downcase
  case ans
    when 'c'
      cashbalance(name)
      gets
    when 's'
      stockbalance(name)
      gets
    when 't'
      totalbalance(name)
      gets
  end

    puts "Would you like to view another balance. Y or N"
    derp = gets.chomp.upcase
      if derp == 'Y'
        view_balance(name)
        else
          puts 'Have a nice day!'
      end
end

########## CREATE PORTFOLIO FUNCTIONS

  #unsure about this -Ron
  def create_portfolio
    puts "What is the client name? "
    name = gets.chomp
    puts "What would you like to call the portfolio?"
    portfolio_name = gets.chomp
    $broker.clients[name].portfolios[portfolio_name] = Portfolio.new(portfolio_name)
  end


def buy_shares
  puts "What is the client name?"
  name= gets.chomp

  if $broker.clients[name] = nil
    puts "Sorry. You entered an invalid client name. If you have not already registered, please do so."
  else

    print "What stock would you like to buy? Give the ticker symbol: "
    symb= gets.chomp.upcase
    print 'What quantity?'
    num= gets.chomp.to_i


    val= (YahooFinance::get_quotes(YahooFinance::StandardQuote, symb)[symb].lastTrade) * num

    if val > $broker.clients[name].cash
        puts "You don't have enough money in your cash account for this transaction."
      else
        print 'Would you like to place #{symb} into a portfolio? Y or N?'
          p= gets.chomp.upcase
            case p
              when 'Y'
                  prints "Enter portfolio name"
                  pname= gets.chomp.upcase
                  $broker.clients[name].cash -= val
                    if $broker.clients[name].portfolios[pname].stocks[symb]= nil
                      $broker.clients[name].portfolios[pname].stocks[symb]= Stock.new(symb,num)
                    else
                      $broker.clients[name].portfolios[pname].stocks[symb].quantity+= num
                    end
              when 'N'
                $broker.clients[name].cash -= val
                 $broker.clients[name].portfolios['General'].stocks[symb].quantity+=num
                else
                  puts 'Make up your mind!'
              end #ends case
          end #ends if then else

        end #ends broker ame being nil
      end #buy shares end




