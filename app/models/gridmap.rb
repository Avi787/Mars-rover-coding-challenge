class Gridmap
  
  def self.drive_rover
    filename = "./instructions01.txt"
    rover = nil
    total_line_count = File.foreach(filename).inject(0) {|c, line| c+1}
    puts("Total line count in file: " + total_line_count.to_s)
    
    line_count = 0
    
    File.open(filename) do |f|
      f.each_line do |line|
        line_count += 1        
        if line_count == 1
          puts "Grid bounds: "+line.to_s
          tmp_line = line.split(" ")
          @gridmax_x = tmp_line[0].to_i
          @gridmax_y = tmp_line[1].to_i
        elsif (line_count % 2 == 0)
          puts "Input: "+line.to_s
          rover = Rover.new
          rover.set_grid_dimensions(0, @gridmax_x, 0, @gridmax_y)
          #puts(rover.show_grid_dimensions)
          tmp_line = line.split(" ")
          rover.set_position(tmp_line[0].to_i, tmp_line[1].to_i, tmp_line[2])
        elsif (line_count % 2 == 1)
          puts "Instructions: "+line.to_s            
          line.each_char do |char|
            #puts(char)
            case
              when char == 'L'
                #puts "Turning Left"
                rover.left_turn
              when char == 'R'
                #puts "Turning Right"
                rover.right_turn
              when char == 'M'
                #puts "Stepping"
                rover.step 
            end
            #puts("XXXX")
            #puts(rover.show_position)
            #puts("YYYY")           
          end
        end
        puts("Output: " + rover.show_position) unless (rover.nil? or line_count % 2 == 0) 
      end
    end
  end
end

