require_relative 'train'

class CargoTrain < Train

  def initialize(number)
    @type = cargo_train_type
    super(number, @type)
  end

  private

  def cargo_train_type
    'cargo'
  end

end

train1 = CargoTrain.new(555)
train1.add_manufacturer('TrainCompany')
puts train1.manufacturer

