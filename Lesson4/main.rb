require_relative 'car'
require_relative 'truck'
require_relative 'sport_car'

car = Car.new
puts car.current_rpm
car.start_engine
puts car.current_rpm

truck = Truck.new
truck.start_engine
puts truck.current_rpm

sport_car = SportCar.new
sport_car.start_engine
puts sport_car.current_rpm
