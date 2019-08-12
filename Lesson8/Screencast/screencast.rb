# frozen_string_literal: true

class Foo
  def bar(key)
    hash = { a: 1, b: 2 }
    value = hash[key]
    value ||= 0
  end

  def long_method
    sleep(3)
  end

  def memoryzation
    @m ||= long_method
  end
end

class User
  attr_accessor :name

  def has_name?
    !!name
  end

  def has_not_name?
    !has_name?
  end

  def name=(value)
    @name = value.capitalize
  end
end
# foo = Foo.new

# p foo.bar(:a)
# p foo.bar(:c)

# p foo.long_method
# p foo.long_method
# p foo.memoryzation
# p foo.memoryzation

user = User.new
p user.has_name?
p user.has_not_name?
user.name = 'john'
p user.name
p user.has_name?
p user.has_not_name?

class Color
  COLORS = { red: '#f00', green: '#0f0', blue: '#00f', white: '#fff' }.freeze
  def code(name)
    @code = COLORS[name] || '#000'
  end

  alias by_name code
end

color = Color.new
p color.code(:red)
p color.code(:nothing)
p color.code(:blue)
p color.by_name(:green)

class Train
  attr_accessor :type, :model, :number, :number_of_wagons

  # def initialize(number, type = "Unknown", model = "Unknown", number_of_wagons = 0)
  #   @number = number
  #   @type = type
  #   @model = model
  #   @number_of_wagons = number_of_wagons
  # end
  #
  # def initialize(number, *args)
  #   @number = number
  #   @type = args[0] || "Unknown"
  #   @model = args[1] || "Unknown"
  #   @number_of_wagons = args[2] || 0
  # end
  #
  def initialize(number, options = {})
    @number = number
    @type = options[:type] || 'Unknown'
    @model = options[:model] || 'Unknown'
    @number_of_wagons = options[:number_of_wagons] || 0
  end
end

p train = Train.new('123')
p train1 = Train.new('123', type: 'cargo')
