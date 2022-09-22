
require 'pry'
class Triangle
  # write code here
attr_accessor :length1, :length2, :length3
    def initialize(length1,length2,length3)
    @length1 =length1
    @length2 =length2
    @length3 =length3
    end

   def kind
    validate_triangles
      if @length1 == @length2 && length1 == length3
        return :equilateral
      elsif @length1 == @length2 || @length1 == @length3 || @length2 == @length3
        return :isosceles
   
      else
          :scalene
      
      end
    end
    def lengths_more_than_zero?
      [length1,length2,length3].all?(&:positive?)
    end

    def proper_triangle?
      length1 + length2 > length3 && length1 + length3 > length2 && length2 + length3 > length1
    end


    def validate_triangles
      raise TriangleError unless lengths_more_than_zero? && proper_triangle?
    end

   class TriangleError <
    StandardError
   end
end
