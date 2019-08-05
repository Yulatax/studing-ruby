class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

1.upto(5) do |x|
  name = "Flyer#{x}"
  email = "flyer#{x}@example.com"
  miles_flown = x * 1000
  puts Flyer.new(name, email, miles_flown)
end
