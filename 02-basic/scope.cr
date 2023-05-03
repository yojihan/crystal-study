# Defines a method in the top-level scope
def add(x, y)
    x + y
end

# Invokes the add method on the top-level scope
p add(1, 2) # => 3

#####################################################################################################

# x = 1
# def add2(y)
#   x + y # error: undefined local variable or method 'x'
# end

# p add2(2)

#####################################################################################################

def baz
  puts "::baz"
end

CONST = "::CONST"

module A
  def self.baz
    puts "A.baz"
  end

  # Without prefix, resolves to the method in the local scope
  baz

  # With :: prefix, resolves to the method in the top-level scope
  ::baz

  CONST = "A::Const"

  p! CONST   # => "A::CONST"
  p! ::CONST # => "::CONST"
end