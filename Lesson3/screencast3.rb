class Car
  attr_accessor :speed

  attr_reader :engine_volume

  def initialize(speed = 0, engine_volume)
    @speed = speed
    @engine_volume = engine_volume
  end

  def start_engine
    puts "Wroom!"
  end

  def beep
    puts "beep beep"
  end

  def stop
    self.speed = 0
  end

  def go
    self.speed = 50
    beep
  end

end

=begin
car = Car.new
p car.object_id

car1 = Car.new
p car.object_id

car.start_engine
car.beep
car.stop
=end

=begin
car1.current_speed
car1.go
car1.current_speed
car1.stop
car1.current_speed
=end

=begin
car3 = Car.new(0, 2.0)
p car3
p car3.current_speed
p car3.engine_volume
car3.set_speed(20)
p car3.current_speed
p car3

p car5 = Car.new(10, 2.0)
=end

=begin
car7 = Car.new(2.0)
car7.speed = 10
p car7
car7.speed = 60
p car7
=end

p car8 = Car.new(2.0)
car8.speed = 50
car8.go
p car8.speed
car8.stop
p car8.speed


