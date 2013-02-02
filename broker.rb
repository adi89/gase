class Broker
  attr_accessor :name

  def initializer(name)
    @name = name
  end

  def to_s
    puts "This is the #{name} brokerage"
  end
end