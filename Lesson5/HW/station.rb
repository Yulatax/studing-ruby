require_relative 'instance_counter_module'

class Station
  include InstanceCounter

  @@all_stations = []

  attr_reader :trains, :name

  def initialize(name)
    @name = name
    @trains = []
    @@all_stations << self
    register_instance
  end

  def self.all
    @@all_stations
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
end


st1 = Station.new('Moscow')
st2 = Station.new('Novosibirsk')
st3 = Station.new('Irkutsk')
p Station.all
p Station.instances
