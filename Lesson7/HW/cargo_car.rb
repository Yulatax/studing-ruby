require_relative 'train_car'

class CargoCar < TrainCar
  attr_reader :capacity_occupied

  def initialize(number, capacity)
    @type = cargo_car_type
    @capacity = capacity
    @capacity_occupied = 0
    super(number, @type)
  end

  def take_capacity(volume)
    if volume <= capacity_available
      @capacity_occupied += volume
    else
      raise("Car capacity has exceed")
    end
  end

  def capacity_available
    @capacity - @capacity_occupied
  end

  private

  def cargo_car_type
    'cargo'
  end

end

# def take_volume(car, volume)
#   begin
#     car.take_capacity(volume)
#   rescue RuntimeError => e
#     puts e.message
#   end
# end
# car1 = CargoCar.new('444', 4000)
# car2 = CargoCar.new('333', 4000)
# puts car1.capacity_occupied
# puts car1.capacity_available
# take_volume(car1, 2000)
# puts car1.capacity_occupied
# puts car1.capacity_available
# take_volume(car1, 3000)
# puts car1.capacity_occupied
# puts car1.capacity_available
# take_volume(car2, 3000)
# puts car2.capacity_occupied
# puts car2.capacity_available

