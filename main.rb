x = 0
y = 0
face = 0
dstart = 0
puts "The robot is #{dstart} from the start"
puts "Issue commands in the format <command><number>"
puts "* `F` - move forward 1 unit"
puts "* `B` - move backward 1 unit"
puts "* `R` - turn right 90 degrees"
puts "* `L` - turn left 90 degrees"
print "Input:"
move = gets().strip
puts "Moving #{move}"

move.split(",").each do |i|
  i.split('').each do |ii|
    case 
    when ii === "r" 
      face = face + 90
      puts "right"
    when ii === "l" 
      face = face - 90
    when ii =~ /[0-9]/
      if face = 0
        y = y + ii.to_i
        p ii
      elsif face == 90
        x = x + ii.to_i
      elsif face == 180
        y = y - ii.to_i
      elsif face == 270
        x = y - ii.to_i
      else
        "incorrect command entered"
      end
    end
  end
end

p x, y, face