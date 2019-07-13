require_relative 'car'
require_relative 'truck'
require_relative 'sport_car'
require_relative 'modules'

=begin
puts Car.instances
car1 = Car.new
car2 = Car.new
puts Car.instances
car3 = SportCar.new
puts Car.instances
puts SportCar.instances
car4 = Truck.new
puts Truck.instances
=end

=begin
car = Car.new
admin_car = Admin::Car.new
puts car.class
puts admin_car.class
=end

=begin
car = Car.new
bike = MotorBike.new
car.fill_tank(50)
puts car.fuel_level
bike.fill_tank(20)
puts bike.fuel_level
=end

car = Car.new
car.print_class
bike = MotorBike.new
bike.print_class
p Car.methods
