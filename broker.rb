class Broker
  attr_accessor :name

  def initialize(name)
    @name = name
    @clients= {}
  end

  def to_s
    puts "This is the #{name} brokerage"
  end

end

