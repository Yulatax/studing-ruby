require_relative 'train_car'

class PassengerCar < TrainCar

  def initialize(number)
    @type = pass_car_type
    super(number, @type)
  end

  private

  def pass_car_type
    'pass'
  end

end


# number = "123"
# begin
#   car = PassengerCar.new(number)
#   puts car
#   puts car.number
#   puts car.type
# rescue RuntimeError => e
#   puts e.inspect
# end
