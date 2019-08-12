# frozen_string_literal: true

# values for several variables
x = 1
y = 2
p x
p y

array = [1, 2, 3]
a, b, c = array
p a
p b
p c

x = 1
y = 2
# exchange values
x, y = y, x
p x
p y

# set value only to variable with value nil or undefined
z ||= 1
p z
z ||= 2
p z

# create array of strings
p %w[apple orange grape]
fruits = %w[apple orange grape]
p fruits

p fruits.map(&:upcase!)
p fruits.map(&:upcase)
p fruits.each(&:upcase)

def m(hash); end

m(a: 1, b: 2)
m(a: 1, b: 2)

def n(arg, hash); end

n(3, a: 1, b: 2)
