require_relative 'instance_counter'

class Station

  include InstanceCounter

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

  def valid?
    validate!
    true
  rescue
    false
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

# name = 'dfdf hjg hjfg-hgh'
#
# begin
#   station = Station.new(name)
# rescue RuntimeError => e
#   puts e.inspect
# end
#
# p Station.all

