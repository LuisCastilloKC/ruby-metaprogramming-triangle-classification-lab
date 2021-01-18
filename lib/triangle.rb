class Triangle
  attr_reader :a, :b, :c

  def initialize(side_a, side_b, side_c)
    @a = side_a
    @b = side_b
    @c = side_c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end
  

  def validate_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |side|
      real_triangle << false if side <= 0 
    raise TriangleError if real_triangle.include?(false)
    end
  end

  class TriangleError < StandardError
  end
end


# Triangle
#   knows that equilateral triangles have equal sides
#   knows that larger equilateral triangles also have equal sides
#   knows that isosceles triangles have last two sides equal
#   knows that isosceles triangles have first and last sides equal
#   knows that isosceles triangles have two first sides equal
#   knows that isosceles triangles have in fact exactly two sides equal
#   knows that scalene triangles have no equal sides
#   knows that scalene triangles have no equal sides at a larger scale too
#   knows that scalene triangles have no equal sides in descending order either
#   knows that very small triangles are legal
#   knows that triangles with no size are illegal
#   knows that triangles with negative sides are illegal
#   knows that triangles violating triangle inequality are illegal
#   knows that triangles violating triangle inequality are illegal 2
#   knows that triangles violating triangle inequality are illegal 3

# Finished in 0.0058 seconds (files took 0.19444 seconds to load)
# 15 examples, 0 failures
