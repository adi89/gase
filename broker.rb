class Broker
  attr_accessor :name, :clients

  def initialize(name)
    @name = name
    @clients= {}
  end

  def to_s
    puts "This is the #{name} brokerage. We have #{clients.count} clients"
  end

end

