require_relative 'train_car'

class CargoCar < TrainCar

  def initialize(number)
    @type = cargo_car_type
    super(number, @type)
  end

  private

  def cargo_car_type
    'cargo'
  end

end

car1 = CargoCar.new(111)
car1.add_manufacturer('Company1')
p car1
