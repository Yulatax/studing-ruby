require_relative 'train_car'

class PassengerCar < TrainCar
  attr_reader :seats_occupied

  def initialize(number, all_seats)
    @type = pass_car_type
    @all_seats = all_seats
    @seats_occupied = 0
    super(number, @type)
  end

  def take_a_seat
    if @seats_occupied < @all_seats
      @seats_occupied += 1
    else
      raise('There are no available seats!')
    end
  end

  def free_seats
    @all_seats - @seats_occupied
  end

  private

  def pass_car_type
    'pass'
  end


end

# def take_seat(wagon)
#   begin
#     wagon.take_a_seat
#   rescue RuntimeError => e
#     puts e.message
#   end
# end
#
# w1 = PassengerCar.new('555', 90)
# 15.times { take_seat(w1) }
# w2 = PassengerCar.new('111', 100)
# 5.times { take_seat(w1) }
# 30.times { take_seat(w2) }
#
# puts w1.seats_occupied
# puts w1.free_seats
# puts w2.seats_occupied
# puts w2.free_seats
#
# 90.times { take_seat(w2) }
#
# puts w2.seats_occupied
# puts w2.free_seats
