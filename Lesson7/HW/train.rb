require_relative 'manufacturer_module'
require_relative 'instance_counter'
require_relative 'validation_module'
require_relative 'cargo_car'

class Train
  include Manufacturer
  include InstanceCounter
  include ValidationModule

  @@all_trains = {}

  attr_accessor :current_station, :route, :speed
  attr_reader :type, :cars, :number

  TRAIN_NUMBER_FORMAT = /^[a-z0-9]{3}-?[a-z0-9]{2}$/i

  def initialize(number, type)
    @number = number
    validate_number!
    @type = type
    validate_type!
    @speed = 0
    @cars = []
    @@all_trains[@number] = self
    register_instance
  end

  class << self

    def find(number)
      @@all_trains[number]
    end
  end

  def each_car(block)
    return if @cars.empty?
    @cars.each do |car|
      block.call(car)
    end
  end

  def increase_speed(speed_acceleration)
    @speed += speed_acceleration
  end

  def stop
    return if train_stopped?
    @speed = 0
  end

  def add_car(car, index)
    @cars = @cars.insert(index, car).compact if can_add_car?(car)
  end

  def remove_car(car)
    return if @cars.empty? || !train_stopped?
    @cars.delete(car)
  end

  def set_route(route)
    @route = route
    @current_station = route.start_station
    @station_index = 0
    @current_station.receive_train(self)
  end

  def next_station
    return if @route.nil? || current_station == @route.stations_list.last
    @route.stations_list[@station_index + 1]
  end

  def previous_station
    return if @route.nil? || current_station == @route.stations_list.first
    @route.stations_list[@station_index - 1]
  end

  def move_forward
    return unless next_station
    @station_index += 1
    @current_station = @route.stations_list[@station_index]
    @current_station.receive_train(self)
    previous_station.send_train(self)
  end

  def move_back
    return unless previous_station
    @station_index -= 1
    @current_station = @route.stations_list[@station_index]
    @current_station.receive_train(self)
    next_station.send_train(self)
  end

  protected

  def validate!
    validate_number! && validate_station!
  end

  def validate_number!
    raise "Train number can't be empty" if @number.nil?
    raise "Train number doesn't match format" if @number !~ TRAIN_NUMBER_FORMAT
  end

  def validate_type!
    raise "Type should be 'cargo' or 'pass'" if @type != 'cargo' && @type != 'pass'
  end

  private

  def car_train_same_type?(car)
    @type == car.type
  end

  def train_stopped?
    @speed.zero?
  end

  def can_add_car?(car)
    train_stopped? && car_train_same_type?(car) && !@cars.include?(car)
  end
end

# car1 = CargoCar.new("900", 4000)
# car2 = CargoCar.new("910", 4000)
# car3 = CargoCar.new("920", 4000)
# car4 = CargoCar.new("930", 4000)
#
# train1 = Train.new("70000", "cargo")
# train1.add_car(car1, 0)
# train1.add_car(car2, 1)
# train1.add_car(car3, 2)
# train1.add_car(car4, 3)
#
# block = Proc.new { |car| puts car.number }
# train1.each_car block
