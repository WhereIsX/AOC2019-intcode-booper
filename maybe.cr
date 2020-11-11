def get_unit_size(puzzle_input, location)
  
  current_location = puzzle_input[location]
  
  case current_location
  when 1, 2
    return 4
  else 
    puts "wat."
    return nil 
  end 

end

def exe_unit(puzzle_input, location)
  opcode = puzzle_input[location]
  num1 = puzzle_input[location + 1]
  num2 = puzzle_input[location + 2]
  write_location = puzzle_input[location + 3]
  
  case opcode
  when 1 # add numbers 
    puzzle_input[write_location] = num1 + num2
  when 2 # multiply numbers 
    puzzle_input[write_location] = num1 * num2
  else 
    puts "ducking invalid opcode." 
  end 
end 