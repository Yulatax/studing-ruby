require_relative 'train'
require_relative 'cargo_train'

class PassengerTrain < Train

  @counter = 0

  def initialize(number)
    @type = pass_train_type
    super(number, @type)
  end

  private

  def pass_train_type
    'pass'
  end

end

=begin
ptrain1 = PassengerTrain.new(111)
ptrain2 = PassengerTrain.new(222)
ptrain3 = PassengerTrain.new(777)
ptrain4 = PassengerTrain.new(888)
p PassengerTrain.find(333)
p PassengerTrain.find(676)
p PassengerTrain.find(222)
p PassengerTrain.instances
p Train.instances
=end
