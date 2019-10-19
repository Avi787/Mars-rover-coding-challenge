require "rails_helper"

describe Rover do  
  context "Tests for rover position and grid dimensions" do
    context "Creating instance of rover for tests below" do
      let(:rover) {Rover.new}

# Test below for checking rover position after being set to initial coordinates

      describe "show_position" do    
        it "shows rover position" do
          rover.set_position(1, 2, "N") 
          rover.show_position.should == "1 2 N"
        end
      end
 
# Test below for checking grid dimensions after being set
      
      describe "show_grid_dimensions" do    
        it "shows grid dimensions" do
          rover.set_grid_dimensions(0, 5, 0, 5) 
          rover.show_grid_dimensions.should == "x_min: 0 y_min: 0 x_max: 5 y_max: 5"
        end
      end
 
# Tests below for checking rovers position and direction after taking in the Test inputs positon and movement instructions

      describe "show_position" do    
        it "shows rover position after starting at (1, 2, N) and receiving instructions: LMLMLMLMM as per Test input" do
          rover.set_position(1, 2, "N")
          rover.set_grid_dimensions(0, 5, 0, 5)
          rover.left_turn
          rover.step
          rover.left_turn
          rover.step
          rover.left_turn
          rover.step
          rover.left_turn
          rover.step
          rover.step  
          rover.show_position.should == "1 3 N"   
        end
      end
      
      describe "show_position" do    
        it "shows rover position after starting at (3, 3, E) and receiving instructions: MMRMMRMRRM as per Test input" do
          rover.set_position(3, 3, "E")
          rover.set_grid_dimensions(0, 5, 0, 5)
          rover.step
          rover.step
          rover.right_turn
          rover.step
          rover.step
          rover.right_turn
          rover.step
          rover.right_turn
          rover.right_turn
          rover.step  
          rover.show_position.should == "5 1 E"   
        end
      end        
    end
  end
end
