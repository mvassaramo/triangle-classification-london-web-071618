class Triangle

  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end 

  def kind
    validate_triangle
    if side_one == side_two && side_one == side_three
      :equilateral 
    elsif side_one == side_two || side_one == side_three || side_three == side_two
      :isosceles
    else 
      :scalene 
    end 
  end 

  def validate_triangle
    real_triangle = [( a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each { |side| real_triangle << false if side <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end


      begin 
        raise TriangleError
      rescue TriangleError => error.message
        puts error.message
      end 
  end

  class TriangleError < StandardError 
  end 

end


