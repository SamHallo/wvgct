class Robot


def move
    move = "B2,F5"
    move.scan(/[a-zA-Z]\d/) do |i|
        case
            when i.scan(/f|F/)
                p i[1]
      end
    end
end
end
test = Robot.new
test.move