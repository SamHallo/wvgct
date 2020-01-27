class Robot

  def initialize
    @@x = Array[0]
    @@y = Array[0]
    @@face = 0
    @@dstart = 0
    puts "Issue commands in the format <command><number>", "* `F` - move forward 1 unit","* `B` - move backward 1 unit","* `R` - turn right 90 degrees","* `L` - turn left 90 degrees"
    print "Input:"
    move = gets().strip
    puts "Moving #{move}"
    move(move)
  end

  def move(move)
    localx = 0
    localy = 0
    move.scan(/[a-zA-Z]\d/) do |i|
      case
          when i.scan(/r|R/)
            @@face += 90
              if @@face == 360
              @@face = 0
              end
              if @@face == 0
                  localy += i[1].to_i
                elsif @@face == 90
                  localx += i[1].to_i
                elsif @@face == 180
                  localy += i[1].to_i
                elsif @@face == 270
                  localx += i[1].to_i
                end
          when i.scan(/l|L/) 
            @@face -= 90
            p "DANGER"
              if @@face == -90
              @@face = 270
              end
              if @@face == 0
                  localy += i[1].to_i
                elsif @@face == 90
                  localx += i[1].to_i
                elsif @@face == 180
                  localy += i[1].to_i
                elsif @@face == 270
                  localx += i[1].to_i
                end
          when i.scan(/f|F/)
              if @@face == 0
                  localy += i[1].to_i
                elsif @@face == 90
                  localx += i[1].to_i
                elsif @@face == 180
                  localy += i[1].to_i
                elsif @@face == 270
                  localx += i[1].to_i
                end
          when i.scan(/b|B/)
              if @@face == 0
                  localy -= i[1].to_i
                elsif @@face == 90
                  localx -= i[1].to_i
                elsif @@face == 180
                  localy -= i[1].to_i
                elsif @@face == 270
                  localx -= i[1].to_i
                end
              end
            end
    @@x << localx
    @@y << localy
    totaldist(@@x,@@y)
  end

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
    dstartx = distmath(x).to_i
    dstarty = distmath(y).to_i 
    dstart = dstarty + dstartx
    p "You are now at #{x[1]},#{y[1]}.","You are #{dstart} units away from the start"
    p @@face
    end
  end

test = Robot.new
test.initialize