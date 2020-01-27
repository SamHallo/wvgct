class Robot

  def initialize
    #sets coordinates origin coordinates, and moveable coordinates, runs cli instructions and prompt
    @@x = Array[0,0]
    @@y = Array[0,0]
    @@face = 0
    @@dstart = 0
    puts "Issue commands in the format <command><number>", "* `F` - move forward 1 unit","* `B` - move backward 1 unit","* `R` - turn right 90 degrees","* `L` - turn left 90 degrees"
    menu()
  end
  def menu
    p "You are facing #{@@face}°"
    print "Input:"
    move = gets().strip
    puts "Moving #{move}"
    move(move)
  end

  def move(move)
    #breaks apart the commands into the relevant letter/number commandlets and then performs them if they are eligible therefore supports commands in any format
    #tracks facing with 90 degree increments and rolls them over if the would go negative or above 360
    move.scan(/[a-zA-Z]\d/) do |i|
      case
          when i.match(/[r|R]\d/)
            @@face += 90
              if @@face == 360
              @@face = 0
              end
              if @@face == 0
                  @@y[1] += i[1].to_i
                elsif @@face == 90
                  @@x[1] += i[1].to_i
                elsif @@face == 180
                  @@y[1] += i[1].to_i
                elsif @@face == 270
                  @@x[1] += i[1].to_i
                end
          when i.match(/[l|L]\d/) 
            @@face -= 90
              if @@face == -90
              @@face = 270
              end
              if @@face == 0
                  @@y[1] += i[1].to_i
                elsif @@face == 90
                  @@x[1] += i[1].to_i
                elsif @@face == 180
                  @@y[1] += i[1].to_i
                elsif @@face == 270
                  @@x[1] += i[1].to_i
                end
          when i.match(/[f|F]\d/)
              if @@face == 0
                  @@y[1] += i[1].to_i
                elsif @@face == 90
                  @@x[1] += i[1].to_i
                elsif @@face == 180
                  @@y[1] += i[1].to_i
                elsif @@face == 270
                  @@x[1] += i[1].to_i
                end
          when i.match(/[b|B]\d/)
              if @@face == 0
                  @@y[1] -= i[1].to_i
                elsif @@face == 90
                  @@x[1] -= i[1].to_i
                elsif @@face == 180
                  @@y[1] -= i[1].to_i
                elsif @@face == 270
                  @@x[1] -= i[1].to_i
                end
              end
            end
            #pass the finished coords to the calc method
    totaldist(@@x,@@y)
  end
  #calc method calcs the manhatan distance between all points and sums them up for each axis. algorithm is supports finding shortest distance for more than 2 points if app is extended
  def distmath(coords)
    result = 0
    sum = 0
    i = 0
    while i < coords.length
        result += coords[i] * i - sum
        sum += coords[i]
        i += 1
    end
    return result
  end

  def totaldist( x , y  )
    #adds the total distance from start 
    dstartx = distmath(x).to_i
    dstarty = distmath(y).to_i 
    dstart = dstarty + dstartx
    p "You are now at #{x[1]},#{y[1]}.","You are #{dstart} units away from the start"
    menu()
    end
  end

test = Robot.new
test.initialize