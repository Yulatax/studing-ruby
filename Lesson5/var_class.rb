class A
  @@b = 0
  @c = 8

  class << self
    attr_accessor :a, :c

    def b
      @@b
    end
  end
end

class Aa < A
  @@b = 1
  @c = 7
end

p A.instance_variables
p A.class_variables
p A.a = 5
p A.b
p A.c
p A.instance_variables
p Aa.a = 10
p A.a
p A.instance_variables
p Aa.instance_variables
p Aa.c
p Aa.b
p A.c
