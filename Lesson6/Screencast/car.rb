class Car
  attr_reader :current_rpm
  attr_accessor :number

  NUMBER_FORMAT = /^[a-z]{1}\d{3}[a-z]{2}$/i

  def initialize(number)
    @number = number
    @current_rpm = 0
    validate!
  end

  def start_engine
    start_engine! if engine_stopped?
  end

  def engine_stopped?
    current_rpm.zero?
  end

  # to check validation after changing number via setters
  def valid?
    validate!
    true
  rescue
    false
  end

  protected

  attr_writer :current_rpm

  def validate!
    raise "Number can't be nil" if number.nil?
    raise "Number should be at least 6 symbols" if number.length < 6
    raise "Number has invalid format" if number !~ NUMBER_FORMAT
  end

  def initial_rpm
    700
  end

  def start_engine!
    self.current_rpm = initial_rpm
  end
end

# car = Car.new('123456')
# p car
# regexp = /.+/
# p "" =~ regexp
# p "a" =~ regexp
# regexp = /\d+.+\d*/
# p "a" =~ regexp
# p "1a" =~ regexp
# p "1a2" =~ regexp
# p "1ab" =~ regexp

car = Car.new("a245fs" )
p car
