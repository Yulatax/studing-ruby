require_relative 'train'

class CargoTrain < Train

  @counter = 0

  def initialize(number)
    @type = cargo_train_type
    super(number, @type)
  end

  private

  def cargo_train_type
    'cargo'
  end

end

=begin
train1 = CargoTrain.new(555)
train1.manufacturer ='TrainCompany'
puts train1.manufacturer
train2 = CargoTrain.new(333)
train4 = CargoTrain.new(444)
p CargoTrain.find(111)
p CargoTrain.find(333)
p CargoTrain.instance_variables
p CargoTrain.class_variables
p CargoTrain.instances
p Train.instances
=end
