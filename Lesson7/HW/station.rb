require_relative 'instance_counter'
require_relative 'validation_module'
require_relative 'cargo_train'
require_relative 'passenger_train'

class Station

  include InstanceCounter
  include ValidationModule

  attr_reader :trains
  attr_accessor :name

  @@all_stations = []

  NAME_FORMAT = /^[a-z][a-z '-]+$/i

  class << self

    def all
      @@all_stations
    end

  end

  def initialize(name)
    @name = name
    validate!
    @trains = []
    @@all_stations << self
    register_instance
  end

  def each_train(block)
    return if @trains.empty?
    @trains.each do |train|
      block.call(train)
    end
  end

  def receive_train(train)
    @trains << train
  end

  def send_train(train)
    @trains.delete(train)
  end

  def trains_by_type(type)
    quantity = @trains.count{|train| train.type == type}
    puts "On station #{@name} there are #{quantity} trains of type #{type}."
  end

  def show_trains_list
    if @trains.empty?
      puts "There are no trains at the #{@name} station"
    else
      @trains.each { |train| puts "#{train.number} : #{train.type}" }
    end
  end

  protected

  def validate!
    raise "Station name can't be empty" if @name.nil?
    raise "Station name should be at least 2 symbols" if @name.length < 2
    raise "Station name includes only latin characters with dashes, apostrophes and spaces" if @name !~ NAME_FORMAT
  end
end


# t1 = CargoTrain.new("55500")
# t2 = CargoTrain.new("55000")
# t3 = PassengerTrain.new("55100")
# t4 = PassengerTrain.new("56000")
# t5 = PassengerTrain.new("57000")
#
# station = Station.new("MOW")
# station.receive_train(t1)
# station.receive_train(t2)
# station.receive_train(t3)
# station.receive_train(t4)
# station.receive_train(t5)
#
# block = Proc.new { |train| puts train.number }
#
# station.each_train block
