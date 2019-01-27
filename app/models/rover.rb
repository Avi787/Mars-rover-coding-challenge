class Rover
  attr_accessor :x, :y, :direction
  def set_position(x, y, direction)
    @x = x
    @y = y
    @direction = direction 
  end
  
  def set_grid_dimensions(x_min, x_max, y_min, y_max)
    @x_min = x_min
    @x_max = x_max
    @y_min = y_min
    @y_max = y_max
  end
  
  def show_grid_dimensions
    "x_min: " + @x_min.to_s + " " + "y_min: " + @y_min.to_s + " " + "x_max: " + @x_max.to_s + " " + "y_max: " + @y_max.to_s
  end
   
  def show_position
    #puts("x: " + @x.to_s + "| y: " + @y.to_s + "| direction: " + @direction)
    @x.to_s + " " + @y.to_s + " " + @direction
  end
  
  def left_turn
    case 
      when @direction == "N"
        @direction = "W"
      when @direction == "W"
        @direction = "S"
      when  @direction == "E"
        @direction = "N"
      when @direction == "S"
        @direction = "E"
    end  
  end
    
  def right_turn
    case 
      when @direction == "N"
        @direction = "E"
      when @direction == "W"
        @direction = "N"
      when  @direction == "E"
        @direction = "S"
      when @direction == "S"
        @direction = "W"        
    end
  end 
    
  def step
    case
      when @direction == "N"
        @y += 1 if (@y < @y_max)
      when @direction == "S"
        @y -= 1 if (@y > @y_min )
      when @direction == "E"
        @x += 1 if (@x < @x_max)
      when @direction == "W"
        @x -= 1 if (@x > @x_min)      
    end      
  end
  
end
