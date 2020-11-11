def run(puzzle_input)
  
  location = 0 
  while location < puzzle_input.size 

    opcode = puzzle_input[location]
    num1 = puzzle_input[location + 1]
    num2 = puzzle_input[location + 2]
    write_location = puzzle_input[location + 3]

    case opcode
    when 1  # add
      puzzle_input[write_location] = num1 + num2
    when 2  # multiply 
      puzzle_input[write_location] = num1 * num2 
    when 99 # halt 
      return puzzle_input
    else 
      puts "wat." 
      return nil 
    end 

    location += 4
  end 
  return puzzle_input 

end 


# TESTS 

tests = [
  {
    input: [1, 10, 20, 2], 
    ans: [1, 10, 30, 2],
    comments: "opcode 1 should add two ints and write it in the pos specified"
  }, 


]

tests.each do |test|
  results = run(test[:input]) 
  
  puts test[:comments]
  if results == test[:ans]
    puts "PASSED"
  else 
    puts "FAILED"
    puts "expected #{test[:ans]}"
    puts test[:input]
    puts "got #{results}"
    puts "------ \n\n"
  end 
end 